@interface MailStatusInfo
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MailStatusInfo

- (NSString)ef_publicDescription
{
  v17 = objc_opt_class();
  state = [(MailStatusInfo *)self state];
  status = [(MailStatusInfo *)self status];
  v4 = &stru_100662A88;
  v21 = status;
  if (status)
  {
    v4 = status;
  }

  v15 = v4;
  primaryStatusPrefix = [(MailStatusInfo *)self primaryStatusPrefix];
  v20 = [EFPrivacy fullyOrPartiallyRedactedStringForString:primaryStatusPrefix];
  secondaryStatusPrefix = [(MailStatusInfo *)self secondaryStatusPrefix];
  v5 = [EFPrivacy fullyOrPartiallyRedactedStringForString:secondaryStatusPrefix];
  lastUpdateTime = [(MailStatusInfo *)self lastUpdateTime];
  shouldShowSubtitle = [(MailStatusInfo *)self shouldShowSubtitle];
  v8 = [EFPrivacy bucketMessageCount:[(MailStatusInfo *)self badgeCount]];
  progress = [(MailStatusInfo *)self progress];
  accountErrorString = [(MailStatusInfo *)self accountErrorString];
  networkingAccountErrorString = [(MailStatusInfo *)self networkingAccountErrorString];
  iCloudQuotaOfferInlineText = [(MailStatusInfo *)self iCloudQuotaOfferInlineText];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p> state:%ld status:%@ primary prefix:%@ secondary prefix:%@ lastUpdateTime:%@ shouldShowSubtitle:%d badgeCount:%u progress:%@ accountErrorString:%@ networkingErrorString:%@ hasOffer:%d", v17, self, state, v15, v20, v5, lastUpdateTime, shouldShowSubtitle, v8, progress, accountErrorString, networkingAccountErrorString, [iCloudQuotaOfferInlineText length] != 0);

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[MailStatusInfo allocWithZone:?]];
  [(MailStatusInfo *)v4 setState:[(MailStatusInfo *)self state]];
  status = [(MailStatusInfo *)self status];
  v6 = [status copy];
  [(MailStatusInfo *)v4 setStatus:v6];

  lastUpdateTime = [(MailStatusInfo *)self lastUpdateTime];
  v8 = [lastUpdateTime copy];
  [(MailStatusInfo *)v4 setLastUpdateTime:v8];

  [(MailStatusInfo *)v4 setShouldShowSubtitle:[(MailStatusInfo *)self shouldShowSubtitle]];
  [(MailStatusInfo *)v4 setBadgeCount:[(MailStatusInfo *)self badgeCount]];
  primaryStatusPrefix = [(MailStatusInfo *)self primaryStatusPrefix];
  v10 = [primaryStatusPrefix copy];
  [(MailStatusInfo *)v4 setPrimaryStatusPrefix:v10];

  secondaryStatusPrefix = [(MailStatusInfo *)self secondaryStatusPrefix];
  v12 = [secondaryStatusPrefix copy];
  [(MailStatusInfo *)v4 setSecondaryStatusPrefix:v12];

  [(MailStatusInfo *)v4 setUnsentCount:[(MailStatusInfo *)self unsentCount]];
  progress = [(MailStatusInfo *)self progress];
  [(MailStatusInfo *)v4 setProgress:progress];

  [(MailStatusInfo *)v4 setHasAccountError:[(MailStatusInfo *)self hasAccountError]];
  accountErrorTitle = [(MailStatusInfo *)self accountErrorTitle];
  [(MailStatusInfo *)v4 setAccountErrorTitle:accountErrorTitle];

  failureReasonDescription = [(MailStatusInfo *)self failureReasonDescription];
  [(MailStatusInfo *)v4 setFailureReasonDescription:failureReasonDescription];

  error = [(MailStatusInfo *)self error];
  v17 = [error copy];
  [(MailStatusInfo *)v4 setError:v17];

  accountErrorString = [(MailStatusInfo *)self accountErrorString];
  [(MailStatusInfo *)v4 setAccountErrorString:accountErrorString];

  networkingAccountErrorString = [(MailStatusInfo *)self networkingAccountErrorString];
  [(MailStatusInfo *)v4 setNetworkingAccountErrorString:networkingAccountErrorString];

  iCloudQuotaOfferText = [(MailStatusInfo *)self iCloudQuotaOfferText];
  [(MailStatusInfo *)v4 setICloudQuotaOfferText:iCloudQuotaOfferText];

  iCloudQuotaOfferLink = [(MailStatusInfo *)self iCloudQuotaOfferLink];
  [(MailStatusInfo *)v4 setICloudQuotaOfferLink:iCloudQuotaOfferLink];

  showQuotaOfferInformationTimestamp = [(MailStatusInfo *)self showQuotaOfferInformationTimestamp];
  v23 = [showQuotaOfferInformationTimestamp copy];
  [(MailStatusInfo *)v4 setShowQuotaOfferInformationTimestamp:v23];

  filterCriteria = [(MailStatusInfo *)self filterCriteria];
  v25 = [filterCriteria copy];
  [(MailStatusInfo *)v4 setFilterCriteria:v25];

  formattedStatuses = [(MailStatusInfo *)self formattedStatuses];
  v27 = [formattedStatuses copy];
  [(MailStatusInfo *)v4 setFormattedStatuses:v27];

  iCloudQuotaOfferInlineText = [(MailStatusInfo *)self iCloudQuotaOfferInlineText];
  v29 = [iCloudQuotaOfferInlineText copy];
  [(MailStatusInfo *)v4 setICloudQuotaOfferInlineText:v29];

  iCloudQuotaOfferLargeText = [(MailStatusInfo *)self iCloudQuotaOfferLargeText];
  v31 = [iCloudQuotaOfferLargeText copy];
  [(MailStatusInfo *)v4 setICloudQuotaOfferLargeText:v31];

  iCloudQuotaOfferCallToAction = [(MailStatusInfo *)self iCloudQuotaOfferCallToAction];
  [(MailStatusInfo *)v4 setICloudQuotaOfferCallToAction:iCloudQuotaOfferCallToAction];

  [(MailStatusInfo *)v4 setICloudQuotaOfferShouldPersist:[(MailStatusInfo *)self iCloudQuotaOfferShouldPersist]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      state = [(MailStatusInfo *)self state];
      if (state == [(MailStatusInfo *)v5 state]&& (v7 = [(MailStatusInfo *)self shouldShowSubtitle], v7 == [(MailStatusInfo *)v5 shouldShowSubtitle]) && (v8 = [(MailStatusInfo *)self badgeCount], v8 == [(MailStatusInfo *)v5 badgeCount]) && (v9 = [(MailStatusInfo *)self unsentCount], v9 == [(MailStatusInfo *)v5 unsentCount]) && (v10 = [(MailStatusInfo *)self hasAccountError], v10 == [(MailStatusInfo *)v5 hasAccountError]) && (v11 = [(MailStatusInfo *)self iCloudQuotaOfferShouldPersist], v11 == [(MailStatusInfo *)v5 iCloudQuotaOfferShouldPersist]))
      {
        status = [(MailStatusInfo *)self status];
        status2 = [(MailStatusInfo *)v5 status];
        if (EFObjectsAreEqual())
        {
          primaryStatusPrefix = [(MailStatusInfo *)self primaryStatusPrefix];
          primaryStatusPrefix2 = [(MailStatusInfo *)v5 primaryStatusPrefix];
          if (EFObjectsAreEqual())
          {
            secondaryStatusPrefix = [(MailStatusInfo *)self secondaryStatusPrefix];
            secondaryStatusPrefix2 = [(MailStatusInfo *)v5 secondaryStatusPrefix];
            if (EFObjectsAreEqual())
            {
              lastUpdateTime = [(MailStatusInfo *)self lastUpdateTime];
              lastUpdateTime2 = [(MailStatusInfo *)v5 lastUpdateTime];
              if (EFObjectsAreEqual())
              {
                progress = [(MailStatusInfo *)self progress];
                progress2 = [(MailStatusInfo *)v5 progress];
                if (EFObjectsAreEqual())
                {
                  accountErrorTitle = [(MailStatusInfo *)self accountErrorTitle];
                  accountErrorTitle2 = [(MailStatusInfo *)v5 accountErrorTitle];
                  if (EFObjectsAreEqual())
                  {
                    failureReasonDescription = [(MailStatusInfo *)self failureReasonDescription];
                    failureReasonDescription2 = [(MailStatusInfo *)v5 failureReasonDescription];
                    if (EFObjectsAreEqual())
                    {
                      error = [(MailStatusInfo *)self error];
                      error2 = [(MailStatusInfo *)v5 error];
                      if (EFObjectsAreEqual())
                      {
                        accountErrorString = [(MailStatusInfo *)self accountErrorString];
                        accountErrorString2 = [(MailStatusInfo *)v5 accountErrorString];
                        if (EFObjectsAreEqual())
                        {
                          networkingAccountErrorString = [(MailStatusInfo *)self networkingAccountErrorString];
                          networkingAccountErrorString2 = [(MailStatusInfo *)v5 networkingAccountErrorString];
                          if (EFObjectsAreEqual())
                          {
                            iCloudQuotaOfferText = [(MailStatusInfo *)self iCloudQuotaOfferText];
                            iCloudQuotaOfferText2 = [(MailStatusInfo *)v5 iCloudQuotaOfferText];
                            if (EFObjectsAreEqual())
                            {
                              iCloudQuotaOfferLink = [(MailStatusInfo *)self iCloudQuotaOfferLink];
                              iCloudQuotaOfferLink2 = [(MailStatusInfo *)v5 iCloudQuotaOfferLink];
                              if (EFObjectsAreEqual())
                              {
                                showQuotaOfferInformationTimestamp = [(MailStatusInfo *)self showQuotaOfferInformationTimestamp];
                                showQuotaOfferInformationTimestamp2 = [(MailStatusInfo *)v5 showQuotaOfferInformationTimestamp];
                                if (EFObjectsAreEqual())
                                {
                                  filterCriteria = [(MailStatusInfo *)self filterCriteria];
                                  filterCriteria2 = [(MailStatusInfo *)v5 filterCriteria];
                                  if (EFObjectsAreEqual())
                                  {
                                    iCloudQuotaOfferInlineText = [(MailStatusInfo *)self iCloudQuotaOfferInlineText];
                                    iCloudQuotaOfferInlineText2 = [(MailStatusInfo *)v5 iCloudQuotaOfferInlineText];
                                    if (EFObjectsAreEqual())
                                    {
                                      iCloudQuotaOfferLargeText = [(MailStatusInfo *)self iCloudQuotaOfferLargeText];
                                      iCloudQuotaOfferLargeText2 = [(MailStatusInfo *)v5 iCloudQuotaOfferLargeText];
                                      v12 = EFObjectsAreEqual();
                                    }

                                    else
                                    {
                                      v12 = 0;
                                    }
                                  }

                                  else
                                  {
                                    v12 = 0;
                                  }
                                }

                                else
                                {
                                  v12 = 0;
                                }
                              }

                              else
                              {
                                v12 = 0;
                              }
                            }

                            else
                            {
                              v12 = 0;
                            }
                          }

                          else
                          {
                            v12 = 0;
                          }
                        }

                        else
                        {
                          v12 = 0;
                        }
                      }

                      else
                      {
                        v12 = 0;
                      }
                    }

                    else
                    {
                      v12 = 0;
                    }
                  }

                  else
                  {
                    v12 = 0;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }

              else
              {
                v12 = 0;
              }
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  state = [(MailStatusInfo *)self state];
  badgeCount = [(MailStatusInfo *)self badgeCount];
  unsentCount = [(MailStatusInfo *)self unsentCount];
  hasAccountError = [(MailStatusInfo *)self hasAccountError];
  iCloudQuotaOfferShouldPersist = [(MailStatusInfo *)self iCloudQuotaOfferShouldPersist];
  status = [(MailStatusInfo *)self status];
  v9 = [status hash];

  primaryStatusPrefix = [(MailStatusInfo *)self primaryStatusPrefix];
  v11 = [primaryStatusPrefix hash];

  secondaryStatusPrefix = [(MailStatusInfo *)self secondaryStatusPrefix];
  v27 = [secondaryStatusPrefix hash];
  v28 = v11;
  v29 = v9;

  lastUpdateTime = [(MailStatusInfo *)self lastUpdateTime];
  v26 = [lastUpdateTime hash];
  LODWORD(v9) = iCloudQuotaOfferShouldPersist;
  v14 = unsentCount;

  iCloudQuotaOfferText = [(MailStatusInfo *)self iCloudQuotaOfferText];
  v16 = [iCloudQuotaOfferText hash];
  v17 = badgeCount;

  filterCriteria = [(MailStatusInfo *)self filterCriteria];
  v19 = [filterCriteria hash];

  iCloudQuotaOfferInlineText = [(MailStatusInfo *)self iCloudQuotaOfferInlineText];
  v21 = [iCloudQuotaOfferInlineText hash];

  iCloudQuotaOfferLargeText = [(MailStatusInfo *)self iCloudQuotaOfferLargeText];
  v23 = 33 * (v21 + 33 * (v19 + 33 * (v16 + 33 * (v26 + 33 * (v27 + 33 * (v28 + 33 * (v29 + 39135393 * state + 1185921 * v17 + 35937 * v14 + 1089 * hasAccountError + 33 * v9)))))));
  v24 = [iCloudQuotaOfferLargeText hash] - 0x79D1C06F9304AADBLL;

  return &v24[v23];
}

- (NSString)debugDescription
{
  ef_publicDescription = [(MailStatusInfo *)self ef_publicDescription];
  error = [(MailStatusInfo *)self error];
  v5 = [ef_publicDescription stringByAppendingFormat:@" error:%@", error];

  return v5;
}

@end