@interface FRAnalyticsReferral
- (FRAnalyticsReferral)initWithAppSessionStartFromNotificationType:(int64_t)type;
- (FRAnalyticsReferral)initWithAppSessionStartMethod:(int64_t)method;
- (FRAnalyticsReferral)initWithUserActivityType:(id)type creativeID:(id)d campaignID:(id)iD campaignType:(id)campaignType referringApplication:(id)application referringURL:(id)l appOpenedByUserActivity:(BOOL)activity widgetModeGroupID:(id)self0 widgetEngagement:(id)self1 appSessionStartMethod:(int64_t)self2 appSessionStartNotificationType:(int64_t)self3;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FRAnalyticsReferral

- (FRAnalyticsReferral)initWithUserActivityType:(id)type creativeID:(id)d campaignID:(id)iD campaignType:(id)campaignType referringApplication:(id)application referringURL:(id)l appOpenedByUserActivity:(BOOL)activity widgetModeGroupID:(id)self0 widgetEngagement:(id)self1 appSessionStartMethod:(int64_t)self2 appSessionStartNotificationType:(int64_t)self3
{
  typeCopy = type;
  dCopy = d;
  iDCopy = iD;
  campaignTypeCopy = campaignType;
  applicationCopy = application;
  lCopy = l;
  groupIDCopy = groupID;
  engagementCopy = engagement;
  v45.receiver = self;
  v45.super_class = FRAnalyticsReferral;
  v27 = [(FRAnalyticsReferral *)&v45 init];
  if (v27)
  {
    v28 = [typeCopy copy];
    userActivityType = v27->_userActivityType;
    v27->_userActivityType = v28;

    v30 = [dCopy copy];
    creativeID = v27->_creativeID;
    v27->_creativeID = v30;

    v32 = [iDCopy copy];
    campaignID = v27->_campaignID;
    v27->_campaignID = v32;

    v34 = [campaignTypeCopy copy];
    campaignType = v27->_campaignType;
    v27->_campaignType = v34;

    v36 = [applicationCopy copy];
    referringApplication = v27->_referringApplication;
    v27->_referringApplication = v36;

    v38 = [lCopy copy];
    referringURL = v27->_referringURL;
    v27->_referringURL = v38;

    v27->_appOpenedByUserActivity = activity;
    v40 = [groupIDCopy copy];
    widgetModeGroupID = v27->_widgetModeGroupID;
    v27->_widgetModeGroupID = v40;

    v42 = [engagementCopy copy];
    widgetEngagement = v27->_widgetEngagement;
    v27->_widgetEngagement = v42;

    v27->_appSessionStartMethod = method;
    v27->_appSessionNotificationType = notificationType;
  }

  return v27;
}

- (FRAnalyticsReferral)initWithAppSessionStartFromNotificationType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = FRAnalyticsReferral;
  result = [(FRAnalyticsReferral *)&v5 init];
  if (result)
  {
    result->_appSessionStartMethod = 3;
    result->_appSessionNotificationType = type;
  }

  return result;
}

- (FRAnalyticsReferral)initWithAppSessionStartMethod:(int64_t)method
{
  v7.receiver = self;
  v7.super_class = FRAnalyticsReferral;
  v4 = [(FRAnalyticsReferral *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(FRAnalyticsReferral *)v4 setAppSessionStartMethod:method];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FRAnalyticsReferral allocWithZone:?]];
  userActivityType = [(FRAnalyticsReferral *)self userActivityType];
  [(FRAnalyticsReferral *)v4 setUserActivityType:userActivityType];

  creativeID = [(FRAnalyticsReferral *)self creativeID];
  [(FRAnalyticsReferral *)v4 setCreativeID:creativeID];

  campaignID = [(FRAnalyticsReferral *)self campaignID];
  [(FRAnalyticsReferral *)v4 setCampaignID:campaignID];

  campaignType = [(FRAnalyticsReferral *)self campaignType];
  [(FRAnalyticsReferral *)v4 setCampaignType:campaignType];

  referringApplication = [(FRAnalyticsReferral *)self referringApplication];
  [(FRAnalyticsReferral *)v4 setReferringApplication:referringApplication];

  referringURL = [(FRAnalyticsReferral *)self referringURL];
  [(FRAnalyticsReferral *)v4 setReferringURL:referringURL];

  [(FRAnalyticsReferral *)v4 setAppOpenedByUserActivity:[(FRAnalyticsReferral *)self appOpenedByUserActivity]];
  widgetModeGroupID = [(FRAnalyticsReferral *)self widgetModeGroupID];
  [(FRAnalyticsReferral *)v4 setWidgetModeGroupID:widgetModeGroupID];

  widgetEngagement = [(FRAnalyticsReferral *)self widgetEngagement];
  [(FRAnalyticsReferral *)v4 setWidgetEngagement:widgetEngagement];

  [(FRAnalyticsReferral *)v4 setAppSessionStartMethod:[(FRAnalyticsReferral *)self appSessionStartMethod]];
  return v4;
}

@end