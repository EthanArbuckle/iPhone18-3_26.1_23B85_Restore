@interface ASCOfferAlertOffer
- (ASCOfferAlertOffer)initWithCoder:(id)coder;
- (ASCOfferAlertOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics alertTitle:(id)title alertMessage:(id)self0 alertFooterMessage:(id)self1 isCancelable:(BOOL)self2 checkRestrictionsForContentRating:(id)self3 shouldCheckForAvailableDiskSpace:(BOOL)self4 remoteControllerRequirement:(id)self5 shouldIncludeActiveAccountInFooterMessage:(BOOL)self6 shouldPromptForConfirmation:(BOOL)self7 completionOffer:(id)self8;
- (ASCOfferAlertOffer)offerWithMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCOfferAlertOffer

- (ASCOfferAlertOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics alertTitle:(id)title alertMessage:(id)self0 alertFooterMessage:(id)self1 isCancelable:(BOOL)self2 checkRestrictionsForContentRating:(id)self3 shouldCheckForAvailableDiskSpace:(BOOL)self4 remoteControllerRequirement:(id)self5 shouldIncludeActiveAccountInFooterMessage:(BOOL)self6 shouldPromptForConfirmation:(BOOL)self7 completionOffer:(id)self8
{
  dCopy = d;
  titlesCopy = titles;
  subtitlesCopy = subtitles;
  ratingCopy = rating;
  metricsCopy = metrics;
  titleCopy = title;
  messageCopy = message;
  footerMessageCopy = footerMessage;
  contentRatingCopy = contentRating;
  requirementCopy = requirement;
  offerCopy = offer;
  v59.receiver = self;
  v59.super_class = ASCOfferAlertOffer;
  v30 = [(ASCOfferAlertOffer *)&v59 init];
  if (v30)
  {
    v31 = [dCopy copy];
    id = v30->_id;
    v30->_id = v31;

    v33 = [titlesCopy copy];
    titles = v30->_titles;
    v30->_titles = v33;

    v35 = [subtitlesCopy copy];
    subtitles = v30->_subtitles;
    v30->_subtitles = v35;

    v30->_flags = flags;
    objc_storeStrong(&v30->_ageRating, rating);
    v37 = [metricsCopy copy];
    metrics = v30->_metrics;
    v30->_metrics = v37;

    v39 = [titleCopy copy];
    alertTitle = v30->_alertTitle;
    v30->_alertTitle = v39;

    v41 = [messageCopy copy];
    alertMessage = v30->_alertMessage;
    v30->_alertMessage = v41;

    v43 = [titleCopy copy];
    v44 = v30->_alertTitle;
    v30->_alertTitle = v43;

    v45 = [footerMessageCopy copy];
    alertFooterMessage = v30->_alertFooterMessage;
    v30->_alertFooterMessage = v45;

    v30->_isCancelable = cancelable;
    v47 = [contentRatingCopy copy];
    checkRestrictionsForContentRating = v30->_checkRestrictionsForContentRating;
    v30->_checkRestrictionsForContentRating = v47;

    v30->_shouldCheckForAvailableDiskSpace = space;
    v49 = [requirementCopy copy];
    remoteControllerRequirement = v30->_remoteControllerRequirement;
    v30->_remoteControllerRequirement = v49;

    v30->_shouldIncludeActiveAccountInFooterMessage = inFooterMessage;
    v30->_shouldPromptForConfirmation = confirmation;
    v51 = [offerCopy copyWithZone:0];
    completionOffer = v30->_completionOffer;
    v30->_completionOffer = v51;
  }

  return v30;
}

- (ASCOfferAlertOffer)initWithCoder:(id)coder
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
        v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ageRating"];
        v9 = ASCMetricsDataDecodeArrayForKey(coderCopy, @"metrics");
        if (v9)
        {
          v56 = v8;
          v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertTitle"];
          v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertMessage"];
          v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertFooterMessage"];
          v58 = v7;
          v57 = v9;
          if ([coderCopy containsValueForKey:@"isCancelable"])
          {
            v53 = [coderCopy decodeBoolForKey:@"isCancelable"];
          }

          else
          {
            v53 = 1;
          }

          v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"checkRestrictionsForContentRating"];
          v43 = [coderCopy decodeBoolForKey:@"shouldCheckForAvailableDiskSpace"];
          v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteControllerRequirement"];
          v45 = [coderCopy decodeBoolForKey:@"shouldIncludeActiveAccountInFooterMessage"];
          v46 = [coderCopy decodeBoolForKey:@"shouldPromptForConfirmation"];
          v47 = ASCOfferDecodeForKey(coderCopy, @"completionOffer");
          BYTE1(v51) = v46;
          LOBYTE(v51) = v45;
          LOBYTE(v50) = v43;
          LOBYTE(v49) = v53;
          v7 = v58;
          self = [(ASCOfferAlertOffer *)self initWithID:v5 titles:v6 subtitles:v58 flags:v56 ageRating:v60 metrics:v57 alertTitle:v55 alertMessage:v59 alertFooterMessage:v54 isCancelable:v49 checkRestrictionsForContentRating:v52 shouldCheckForAvailableDiskSpace:v50 remoteControllerRequirement:v44 shouldIncludeActiveAccountInFooterMessage:v51 shouldPromptForConfirmation:v47 completionOffer:?];

          v9 = v57;
          selfCopy = self;
        }

        else
        {
          v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v35)
          {
            [(ASCOfferAlertOffer *)v35 initWithCoder:v36, v37, v38, v39, v40, v41, v42];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v27)
        {
          [(ASCOfferAlertOffer *)v27 initWithCoder:v28, v29, v30, v31, v32, v33, v34];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        [(ASCOfferAlertOffer *)v19 initWithCoder:v20, v21, v22, v23, v24, v25, v26];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      [(ASCOfferAlertOffer *)v10 initWithCoder:v11, v12, v13, v14, v15, v16, v17];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASCOfferAlertOffer *)self id];
  [coderCopy encodeObject:v5 forKey:@"id"];

  titles = [(ASCOfferAlertOffer *)self titles];
  [coderCopy encodeObject:titles forKey:@"titles"];

  subtitles = [(ASCOfferAlertOffer *)self subtitles];
  [coderCopy encodeObject:subtitles forKey:@"subtitles"];

  [coderCopy encodeInteger:-[ASCOfferAlertOffer flags](self forKey:{"flags"), @"flags"}];
  ageRating = [(ASCOfferAlertOffer *)self ageRating];
  [coderCopy encodeObject:ageRating forKey:@"ageRating"];

  metrics = [(ASCOfferAlertOffer *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  alertTitle = [(ASCOfferAlertOffer *)self alertTitle];
  [coderCopy encodeObject:alertTitle forKey:@"alertTitle"];

  alertMessage = [(ASCOfferAlertOffer *)self alertMessage];
  [coderCopy encodeObject:alertMessage forKey:@"alertMessage"];

  alertFooterMessage = [(ASCOfferAlertOffer *)self alertFooterMessage];
  [coderCopy encodeObject:alertFooterMessage forKey:@"alertFooterMessage"];

  [coderCopy encodeBool:-[ASCOfferAlertOffer isCancelable](self forKey:{"isCancelable"), @"isCancelable"}];
  checkRestrictionsForContentRating = [(ASCOfferAlertOffer *)self checkRestrictionsForContentRating];
  [coderCopy encodeObject:checkRestrictionsForContentRating forKey:@"checkRestrictionsForContentRating"];

  [coderCopy encodeBool:-[ASCOfferAlertOffer shouldCheckForAvailableDiskSpace](self forKey:{"shouldCheckForAvailableDiskSpace"), @"shouldCheckForAvailableDiskSpace"}];
  remoteControllerRequirement = [(ASCOfferAlertOffer *)self remoteControllerRequirement];
  [coderCopy encodeObject:remoteControllerRequirement forKey:@"remoteControllerRequirement"];

  [coderCopy encodeBool:-[ASCOfferAlertOffer shouldIncludeActiveAccountInFooterMessage](self forKey:{"shouldIncludeActiveAccountInFooterMessage"), @"shouldIncludeActiveAccountInFooterMessage"}];
  [coderCopy encodeBool:-[ASCOfferAlertOffer shouldPromptForConfirmation](self forKey:{"shouldPromptForConfirmation"), @"shouldPromptForConfirmation"}];
  completionOffer = [(ASCOfferAlertOffer *)self completionOffer];
  [coderCopy encodeObject:completionOffer forKey:@"completionOffer"];
}

- (ASCOfferAlertOffer)offerWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v23 = objc_alloc(objc_opt_class());
  v22 = [(ASCOfferAlertOffer *)self id];
  titles = [(ASCOfferAlertOffer *)self titles];
  subtitles = [(ASCOfferAlertOffer *)self subtitles];
  flags = [(ASCOfferAlertOffer *)self flags];
  ageRating = [(ASCOfferAlertOffer *)self ageRating];
  alertTitle = [(ASCOfferAlertOffer *)self alertTitle];
  alertMessage = [(ASCOfferAlertOffer *)self alertMessage];
  alertFooterMessage = [(ASCOfferAlertOffer *)self alertFooterMessage];
  isCancelable = [(ASCOfferAlertOffer *)self isCancelable];
  checkRestrictionsForContentRating = [(ASCOfferAlertOffer *)self checkRestrictionsForContentRating];
  shouldCheckForAvailableDiskSpace = [(ASCOfferAlertOffer *)self shouldCheckForAvailableDiskSpace];
  remoteControllerRequirement = [(ASCOfferAlertOffer *)self remoteControllerRequirement];
  shouldIncludeActiveAccountInFooterMessage = [(ASCOfferAlertOffer *)self shouldIncludeActiveAccountInFooterMessage];
  shouldPromptForConfirmation = [(ASCOfferAlertOffer *)self shouldPromptForConfirmation];
  completionOffer = [(ASCOfferAlertOffer *)self completionOffer];
  BYTE1(v16) = shouldPromptForConfirmation;
  LOBYTE(v16) = shouldIncludeActiveAccountInFooterMessage;
  LOBYTE(v15) = shouldCheckForAvailableDiskSpace;
  LOBYTE(v14) = isCancelable;
  v24 = [v23 initWithID:v22 titles:titles subtitles:subtitles flags:flags ageRating:ageRating metrics:metricsCopy alertTitle:alertTitle alertMessage:alertMessage alertFooterMessage:alertFooterMessage isCancelable:v14 checkRestrictionsForContentRating:checkRestrictionsForContentRating shouldCheckForAvailableDiskSpace:v15 remoteControllerRequirement:remoteControllerRequirement shouldIncludeActiveAccountInFooterMessage:v16 shouldPromptForConfirmation:completionOffer completionOffer:?];

  return v24;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCOfferAlertOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  titles = [(ASCOfferAlertOffer *)self titles];
  [(ASCHasher *)v3 combineObject:titles];

  subtitles = [(ASCOfferAlertOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:subtitles];

  [(ASCHasher *)v3 combineInteger:[(ASCOfferAlertOffer *)self flags]];
  ageRating = [(ASCOfferAlertOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:ageRating];

  metrics = [(ASCOfferAlertOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:metrics];

  alertTitle = [(ASCOfferAlertOffer *)self alertTitle];
  [(ASCHasher *)v3 combineObject:alertTitle];

  alertMessage = [(ASCOfferAlertOffer *)self alertMessage];
  [(ASCHasher *)v3 combineObject:alertMessage];

  alertFooterMessage = [(ASCOfferAlertOffer *)self alertFooterMessage];
  [(ASCHasher *)v3 combineObject:alertFooterMessage];

  [(ASCHasher *)v3 combineBool:[(ASCOfferAlertOffer *)self isCancelable]];
  checkRestrictionsForContentRating = [(ASCOfferAlertOffer *)self checkRestrictionsForContentRating];
  [(ASCHasher *)v3 combineObject:checkRestrictionsForContentRating];

  [(ASCHasher *)v3 combineBool:[(ASCOfferAlertOffer *)self shouldCheckForAvailableDiskSpace]];
  remoteControllerRequirement = [(ASCOfferAlertOffer *)self remoteControllerRequirement];
  [(ASCHasher *)v3 combineObject:remoteControllerRequirement];

  [(ASCHasher *)v3 combineBool:[(ASCOfferAlertOffer *)self shouldIncludeActiveAccountInFooterMessage]];
  [(ASCHasher *)v3 combineBool:[(ASCOfferAlertOffer *)self shouldPromptForConfirmation]];
  completionOffer = [(ASCOfferAlertOffer *)self completionOffer];
  [(ASCHasher *)v3 combineObject:completionOffer];

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
    v8 = [(ASCOfferAlertOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        titles = [(ASCOfferAlertOffer *)self titles];
        titles2 = [v7 titles];
        v13 = titles2;
        if (titles && titles2)
        {
          if ([titles isEqual:titles2])
          {
LABEL_13:
            subtitles = [(ASCOfferAlertOffer *)self subtitles];
            subtitles2 = [v7 subtitles];
            v16 = subtitles2;
            if (subtitles && subtitles2)
            {
              if (![subtitles isEqual:subtitles2])
              {
                goto LABEL_40;
              }
            }

            else if (subtitles != subtitles2)
            {
              goto LABEL_40;
            }

            flags = [(ASCOfferAlertOffer *)self flags];
            if (flags == [v7 flags])
            {
              ageRating = [(ASCOfferAlertOffer *)self ageRating];
              ageRating2 = [v7 ageRating];
              v21 = ageRating2;
              if (ageRating && ageRating2)
              {
                v22 = ageRating;
                v71 = subtitles;
                v23 = v16;
                v24 = ageRating;
                v25 = v21;
                v26 = [v22 isEqual:v21];
                v21 = v25;
                ageRating = v24;
                v16 = v23;
                subtitles = v71;
                if (v26)
                {
LABEL_27:
                  v69 = v21;
                  v70 = ageRating;
                  metrics = [(ASCOfferAlertOffer *)self metrics];
                  metrics2 = [v7 metrics];
                  v29 = metrics2;
                  v74 = metrics;
                  if (metrics && metrics2)
                  {
                    v30 = metrics2;
                    v31 = [v74 isEqual:metrics2];
                    v29 = v30;
                    if (v31)
                    {
LABEL_30:
                      v67 = v29;
                      alertTitle = [(ASCOfferAlertOffer *)self alertTitle];
                      alertTitle2 = [v7 alertTitle];
                      v34 = alertTitle2;
                      v68 = alertTitle;
                      if (alertTitle && alertTitle2)
                      {
                        v35 = alertTitle2;
                        v36 = [v68 isEqual:alertTitle2];
                        v34 = v35;
                        if (v36)
                        {
LABEL_33:
                          v65 = v34;
                          alertMessage = [(ASCOfferAlertOffer *)self alertMessage];
                          alertMessage2 = [v7 alertMessage];
                          v39 = alertMessage2;
                          v66 = alertMessage;
                          if (alertMessage && alertMessage2)
                          {
                            v40 = alertMessage2;
                            v41 = [v66 isEqual:alertMessage2];
                            v39 = v40;
                            if (v41)
                            {
LABEL_36:
                              v63 = v39;
                              alertFooterMessage = [(ASCOfferAlertOffer *)self alertFooterMessage];
                              alertFooterMessage2 = [v7 alertFooterMessage];
                              v64 = alertFooterMessage;
                              v62 = alertFooterMessage2;
                              if (alertFooterMessage && alertFooterMessage2)
                              {
                                if (![alertFooterMessage isEqual:alertFooterMessage2])
                                {
                                  goto LABEL_51;
                                }
                              }

                              else if (alertFooterMessage != alertFooterMessage2)
                              {
LABEL_51:
                                v17 = 0;
LABEL_69:

                                v39 = v63;
                                goto LABEL_70;
                              }

                              isCancelable = [(ASCOfferAlertOffer *)self isCancelable];
                              if (isCancelable != [v7 isCancelable])
                              {
                                goto LABEL_51;
                              }

                              checkRestrictionsForContentRating = [(ASCOfferAlertOffer *)self checkRestrictionsForContentRating];
                              checkRestrictionsForContentRating2 = [v7 checkRestrictionsForContentRating];
                              v61 = checkRestrictionsForContentRating;
                              if (checkRestrictionsForContentRating && checkRestrictionsForContentRating2)
                              {
                                v47 = checkRestrictionsForContentRating2;
                                if (![v61 isEqual:checkRestrictionsForContentRating2])
                                {
                                  goto LABEL_58;
                                }
                              }

                              else
                              {
                                v47 = checkRestrictionsForContentRating2;
                                if (v61 != checkRestrictionsForContentRating2)
                                {
LABEL_58:
                                  v17 = 0;
LABEL_68:

                                  goto LABEL_69;
                                }
                              }

                              shouldCheckForAvailableDiskSpace = [(ASCOfferAlertOffer *)self shouldCheckForAvailableDiskSpace];
                              if (shouldCheckForAvailableDiskSpace != [v7 shouldCheckForAvailableDiskSpace])
                              {
                                goto LABEL_58;
                              }

                              v73 = subtitles;
                              v60 = v16;
                              remoteControllerRequirement = [(ASCOfferAlertOffer *)self remoteControllerRequirement];
                              remoteControllerRequirement2 = [v7 remoteControllerRequirement];
                              v50 = remoteControllerRequirement2;
                              v51 = remoteControllerRequirement;
                              if (remoteControllerRequirement && remoteControllerRequirement2)
                              {
                                v52 = remoteControllerRequirement;
                                v53 = v50;
                                if (![v52 isEqual:v50])
                                {
                                  goto LABEL_66;
                                }
                              }

                              else
                              {
                                v53 = remoteControllerRequirement2;
                                if (v51 != remoteControllerRequirement2)
                                {
                                  goto LABEL_66;
                                }
                              }

                              shouldIncludeActiveAccountInFooterMessage = [(ASCOfferAlertOffer *)self shouldIncludeActiveAccountInFooterMessage];
                              if (shouldIncludeActiveAccountInFooterMessage == [v7 shouldIncludeActiveAccountInFooterMessage])
                              {
                                shouldPromptForConfirmation = [(ASCOfferAlertOffer *)self shouldPromptForConfirmation];
                                if (shouldPromptForConfirmation == [v7 shouldPromptForConfirmation])
                                {
                                  completionOffer = [(ASCOfferAlertOffer *)self completionOffer];
                                  [v7 completionOffer];
                                  v59 = v56 = completionOffer;
                                  if (completionOffer && v59)
                                  {
                                    v17 = [completionOffer isEqual:v59];
                                  }

                                  else
                                  {
                                    v17 = completionOffer == v59;
                                  }

                                  goto LABEL_67;
                                }
                              }

LABEL_66:
                              v17 = 0;
LABEL_67:

                              v16 = v60;
                              subtitles = v73;
                              goto LABEL_68;
                            }
                          }

                          else if (alertMessage == alertMessage2)
                          {
                            goto LABEL_36;
                          }

                          v17 = 0;
LABEL_70:

                          v34 = v65;
                          goto LABEL_71;
                        }
                      }

                      else if (alertTitle == alertTitle2)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
LABEL_71:

                      v29 = v67;
                      goto LABEL_72;
                    }
                  }

                  else if (metrics == metrics2)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_72:

                  v21 = v69;
                  ageRating = v70;
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

LABEL_40:
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
  v4 = [(ASCOfferAlertOffer *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  titles = [(ASCOfferAlertOffer *)self titles];
  [(ASCDescriber *)v3 addObject:titles withName:@"titles"];

  subtitles = [(ASCOfferAlertOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:subtitles withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCOfferAlertOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  ageRating = [(ASCOfferAlertOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:ageRating withName:@"ageRating"];

  metrics = [(ASCOfferAlertOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:metrics withName:@"metrics"];

  alertTitle = [(ASCOfferAlertOffer *)self alertTitle];
  [(ASCDescriber *)v3 addObject:alertTitle withName:@"alertTitle"];

  alertMessage = [(ASCOfferAlertOffer *)self alertMessage];
  [(ASCDescriber *)v3 addObject:alertMessage withName:@"alertMessage"];

  alertFooterMessage = [(ASCOfferAlertOffer *)self alertFooterMessage];
  [(ASCDescriber *)v3 addObject:alertFooterMessage withName:@"alertFooterMessage"];

  [(ASCDescriber *)v3 addBool:[(ASCOfferAlertOffer *)self isCancelable] withName:@"isCancelable"];
  checkRestrictionsForContentRating = [(ASCOfferAlertOffer *)self checkRestrictionsForContentRating];
  [(ASCDescriber *)v3 addObject:checkRestrictionsForContentRating withName:@"checkRestrictionsForContentRating"];

  [(ASCDescriber *)v3 addBool:[(ASCOfferAlertOffer *)self shouldCheckForAvailableDiskSpace] withName:@"shouldCheckForAvailableDiskSpace"];
  remoteControllerRequirement = [(ASCOfferAlertOffer *)self remoteControllerRequirement];
  [(ASCDescriber *)v3 addObject:remoteControllerRequirement withName:@"remoteControllerRequirement"];

  [(ASCDescriber *)v3 addBool:[(ASCOfferAlertOffer *)self shouldIncludeActiveAccountInFooterMessage] withName:@"shouldIncludeActiveAccountInFooterMessage"];
  [(ASCDescriber *)v3 addBool:[(ASCOfferAlertOffer *)self shouldPromptForConfirmation] withName:@"shouldPromptForConfirmation"];
  completionOffer = [(ASCOfferAlertOffer *)self completionOffer];
  [(ASCDescriber *)v3 addObject:completionOffer withName:@"completionOffer"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end