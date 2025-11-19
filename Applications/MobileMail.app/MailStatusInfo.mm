@interface MailStatusInfo
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation MailStatusInfo

- (NSString)ef_publicDescription
{
  v17 = objc_opt_class();
  v16 = [(MailStatusInfo *)self state];
  v3 = [(MailStatusInfo *)self status];
  v4 = &stru_100662A88;
  v21 = v3;
  if (v3)
  {
    v4 = v3;
  }

  v15 = v4;
  v19 = [(MailStatusInfo *)self primaryStatusPrefix];
  v20 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v19];
  v18 = [(MailStatusInfo *)self secondaryStatusPrefix];
  v5 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v18];
  v6 = [(MailStatusInfo *)self lastUpdateTime];
  v7 = [(MailStatusInfo *)self shouldShowSubtitle];
  v8 = [EFPrivacy bucketMessageCount:[(MailStatusInfo *)self badgeCount]];
  v9 = [(MailStatusInfo *)self progress];
  v10 = [(MailStatusInfo *)self accountErrorString];
  v11 = [(MailStatusInfo *)self networkingAccountErrorString];
  v12 = [(MailStatusInfo *)self iCloudQuotaOfferInlineText];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p> state:%ld status:%@ primary prefix:%@ secondary prefix:%@ lastUpdateTime:%@ shouldShowSubtitle:%d badgeCount:%u progress:%@ accountErrorString:%@ networkingErrorString:%@ hasOffer:%d", v17, self, v16, v15, v20, v5, v6, v7, v8, v9, v10, v11, [v12 length] != 0);

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MailStatusInfo allocWithZone:?]];
  [(MailStatusInfo *)v4 setState:[(MailStatusInfo *)self state]];
  v5 = [(MailStatusInfo *)self status];
  v6 = [v5 copy];
  [(MailStatusInfo *)v4 setStatus:v6];

  v7 = [(MailStatusInfo *)self lastUpdateTime];
  v8 = [v7 copy];
  [(MailStatusInfo *)v4 setLastUpdateTime:v8];

  [(MailStatusInfo *)v4 setShouldShowSubtitle:[(MailStatusInfo *)self shouldShowSubtitle]];
  [(MailStatusInfo *)v4 setBadgeCount:[(MailStatusInfo *)self badgeCount]];
  v9 = [(MailStatusInfo *)self primaryStatusPrefix];
  v10 = [v9 copy];
  [(MailStatusInfo *)v4 setPrimaryStatusPrefix:v10];

  v11 = [(MailStatusInfo *)self secondaryStatusPrefix];
  v12 = [v11 copy];
  [(MailStatusInfo *)v4 setSecondaryStatusPrefix:v12];

  [(MailStatusInfo *)v4 setUnsentCount:[(MailStatusInfo *)self unsentCount]];
  v13 = [(MailStatusInfo *)self progress];
  [(MailStatusInfo *)v4 setProgress:v13];

  [(MailStatusInfo *)v4 setHasAccountError:[(MailStatusInfo *)self hasAccountError]];
  v14 = [(MailStatusInfo *)self accountErrorTitle];
  [(MailStatusInfo *)v4 setAccountErrorTitle:v14];

  v15 = [(MailStatusInfo *)self failureReasonDescription];
  [(MailStatusInfo *)v4 setFailureReasonDescription:v15];

  v16 = [(MailStatusInfo *)self error];
  v17 = [v16 copy];
  [(MailStatusInfo *)v4 setError:v17];

  v18 = [(MailStatusInfo *)self accountErrorString];
  [(MailStatusInfo *)v4 setAccountErrorString:v18];

  v19 = [(MailStatusInfo *)self networkingAccountErrorString];
  [(MailStatusInfo *)v4 setNetworkingAccountErrorString:v19];

  v20 = [(MailStatusInfo *)self iCloudQuotaOfferText];
  [(MailStatusInfo *)v4 setICloudQuotaOfferText:v20];

  v21 = [(MailStatusInfo *)self iCloudQuotaOfferLink];
  [(MailStatusInfo *)v4 setICloudQuotaOfferLink:v21];

  v22 = [(MailStatusInfo *)self showQuotaOfferInformationTimestamp];
  v23 = [v22 copy];
  [(MailStatusInfo *)v4 setShowQuotaOfferInformationTimestamp:v23];

  v24 = [(MailStatusInfo *)self filterCriteria];
  v25 = [v24 copy];
  [(MailStatusInfo *)v4 setFilterCriteria:v25];

  v26 = [(MailStatusInfo *)self formattedStatuses];
  v27 = [v26 copy];
  [(MailStatusInfo *)v4 setFormattedStatuses:v27];

  v28 = [(MailStatusInfo *)self iCloudQuotaOfferInlineText];
  v29 = [v28 copy];
  [(MailStatusInfo *)v4 setICloudQuotaOfferInlineText:v29];

  v30 = [(MailStatusInfo *)self iCloudQuotaOfferLargeText];
  v31 = [v30 copy];
  [(MailStatusInfo *)v4 setICloudQuotaOfferLargeText:v31];

  v32 = [(MailStatusInfo *)self iCloudQuotaOfferCallToAction];
  [(MailStatusInfo *)v4 setICloudQuotaOfferCallToAction:v32];

  [(MailStatusInfo *)v4 setICloudQuotaOfferShouldPersist:[(MailStatusInfo *)self iCloudQuotaOfferShouldPersist]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MailStatusInfo *)self state];
      if (v6 == [(MailStatusInfo *)v5 state]&& (v7 = [(MailStatusInfo *)self shouldShowSubtitle], v7 == [(MailStatusInfo *)v5 shouldShowSubtitle]) && (v8 = [(MailStatusInfo *)self badgeCount], v8 == [(MailStatusInfo *)v5 badgeCount]) && (v9 = [(MailStatusInfo *)self unsentCount], v9 == [(MailStatusInfo *)v5 unsentCount]) && (v10 = [(MailStatusInfo *)self hasAccountError], v10 == [(MailStatusInfo *)v5 hasAccountError]) && (v11 = [(MailStatusInfo *)self iCloudQuotaOfferShouldPersist], v11 == [(MailStatusInfo *)v5 iCloudQuotaOfferShouldPersist]))
      {
        v14 = [(MailStatusInfo *)self status];
        v15 = [(MailStatusInfo *)v5 status];
        if (EFObjectsAreEqual())
        {
          v16 = [(MailStatusInfo *)self primaryStatusPrefix];
          v17 = [(MailStatusInfo *)v5 primaryStatusPrefix];
          if (EFObjectsAreEqual())
          {
            v18 = [(MailStatusInfo *)self secondaryStatusPrefix];
            v19 = [(MailStatusInfo *)v5 secondaryStatusPrefix];
            if (EFObjectsAreEqual())
            {
              v45 = [(MailStatusInfo *)self lastUpdateTime];
              v20 = [(MailStatusInfo *)v5 lastUpdateTime];
              if (EFObjectsAreEqual())
              {
                v44 = [(MailStatusInfo *)self progress];
                v43 = [(MailStatusInfo *)v5 progress];
                if (EFObjectsAreEqual())
                {
                  v42 = [(MailStatusInfo *)self accountErrorTitle];
                  v41 = [(MailStatusInfo *)v5 accountErrorTitle];
                  if (EFObjectsAreEqual())
                  {
                    v40 = [(MailStatusInfo *)self failureReasonDescription];
                    v39 = [(MailStatusInfo *)v5 failureReasonDescription];
                    if (EFObjectsAreEqual())
                    {
                      v38 = [(MailStatusInfo *)self error];
                      v37 = [(MailStatusInfo *)v5 error];
                      if (EFObjectsAreEqual())
                      {
                        v36 = [(MailStatusInfo *)self accountErrorString];
                        v35 = [(MailStatusInfo *)v5 accountErrorString];
                        if (EFObjectsAreEqual())
                        {
                          v34 = [(MailStatusInfo *)self networkingAccountErrorString];
                          v33 = [(MailStatusInfo *)v5 networkingAccountErrorString];
                          if (EFObjectsAreEqual())
                          {
                            v32 = [(MailStatusInfo *)self iCloudQuotaOfferText];
                            v31 = [(MailStatusInfo *)v5 iCloudQuotaOfferText];
                            if (EFObjectsAreEqual())
                            {
                              v30 = [(MailStatusInfo *)self iCloudQuotaOfferLink];
                              v29 = [(MailStatusInfo *)v5 iCloudQuotaOfferLink];
                              if (EFObjectsAreEqual())
                              {
                                v28 = [(MailStatusInfo *)self showQuotaOfferInformationTimestamp];
                                v27 = [(MailStatusInfo *)v5 showQuotaOfferInformationTimestamp];
                                if (EFObjectsAreEqual())
                                {
                                  v26 = [(MailStatusInfo *)self filterCriteria];
                                  v25 = [(MailStatusInfo *)v5 filterCriteria];
                                  if (EFObjectsAreEqual())
                                  {
                                    v24 = [(MailStatusInfo *)self iCloudQuotaOfferInlineText];
                                    v23 = [(MailStatusInfo *)v5 iCloudQuotaOfferInlineText];
                                    if (EFObjectsAreEqual())
                                    {
                                      v22 = [(MailStatusInfo *)self iCloudQuotaOfferLargeText];
                                      v21 = [(MailStatusInfo *)v5 iCloudQuotaOfferLargeText];
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
  v3 = [(MailStatusInfo *)self state];
  v4 = [(MailStatusInfo *)self badgeCount];
  v5 = [(MailStatusInfo *)self unsentCount];
  v6 = [(MailStatusInfo *)self hasAccountError];
  v7 = [(MailStatusInfo *)self iCloudQuotaOfferShouldPersist];
  v8 = [(MailStatusInfo *)self status];
  v9 = [v8 hash];

  v10 = [(MailStatusInfo *)self primaryStatusPrefix];
  v11 = [v10 hash];

  v12 = [(MailStatusInfo *)self secondaryStatusPrefix];
  v27 = [v12 hash];
  v28 = v11;
  v29 = v9;

  v13 = [(MailStatusInfo *)self lastUpdateTime];
  v26 = [v13 hash];
  LODWORD(v9) = v7;
  v14 = v5;

  v15 = [(MailStatusInfo *)self iCloudQuotaOfferText];
  v16 = [v15 hash];
  v17 = v4;

  v18 = [(MailStatusInfo *)self filterCriteria];
  v19 = [v18 hash];

  v20 = [(MailStatusInfo *)self iCloudQuotaOfferInlineText];
  v21 = [v20 hash];

  v22 = [(MailStatusInfo *)self iCloudQuotaOfferLargeText];
  v23 = 33 * (v21 + 33 * (v19 + 33 * (v16 + 33 * (v26 + 33 * (v27 + 33 * (v28 + 33 * (v29 + 39135393 * v3 + 1185921 * v17 + 35937 * v14 + 1089 * v6 + 33 * v9)))))));
  v24 = [v22 hash] - 0x79D1C06F9304AADBLL;

  return &v24[v23];
}

- (NSString)debugDescription
{
  v3 = [(MailStatusInfo *)self ef_publicDescription];
  v4 = [(MailStatusInfo *)self error];
  v5 = [v3 stringByAppendingFormat:@" error:%@", v4];

  return v5;
}

@end