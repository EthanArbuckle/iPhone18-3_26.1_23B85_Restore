@interface FRAnalyticsReferral
- (FRAnalyticsReferral)initWithAppSessionStartFromNotificationType:(int64_t)a3;
- (FRAnalyticsReferral)initWithAppSessionStartMethod:(int64_t)a3;
- (FRAnalyticsReferral)initWithUserActivityType:(id)a3 creativeID:(id)a4 campaignID:(id)a5 campaignType:(id)a6 referringApplication:(id)a7 referringURL:(id)a8 appOpenedByUserActivity:(BOOL)a9 widgetModeGroupID:(id)a10 widgetEngagement:(id)a11 appSessionStartMethod:(int64_t)a12 appSessionStartNotificationType:(int64_t)a13;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FRAnalyticsReferral

- (FRAnalyticsReferral)initWithUserActivityType:(id)a3 creativeID:(id)a4 campaignID:(id)a5 campaignType:(id)a6 referringApplication:(id)a7 referringURL:(id)a8 appOpenedByUserActivity:(BOOL)a9 widgetModeGroupID:(id)a10 widgetEngagement:(id)a11 appSessionStartMethod:(int64_t)a12 appSessionStartNotificationType:(int64_t)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a10;
  v26 = a11;
  v45.receiver = self;
  v45.super_class = FRAnalyticsReferral;
  v27 = [(FRAnalyticsReferral *)&v45 init];
  if (v27)
  {
    v28 = [v19 copy];
    userActivityType = v27->_userActivityType;
    v27->_userActivityType = v28;

    v30 = [v20 copy];
    creativeID = v27->_creativeID;
    v27->_creativeID = v30;

    v32 = [v21 copy];
    campaignID = v27->_campaignID;
    v27->_campaignID = v32;

    v34 = [v22 copy];
    campaignType = v27->_campaignType;
    v27->_campaignType = v34;

    v36 = [v23 copy];
    referringApplication = v27->_referringApplication;
    v27->_referringApplication = v36;

    v38 = [v24 copy];
    referringURL = v27->_referringURL;
    v27->_referringURL = v38;

    v27->_appOpenedByUserActivity = a9;
    v40 = [v25 copy];
    widgetModeGroupID = v27->_widgetModeGroupID;
    v27->_widgetModeGroupID = v40;

    v42 = [v26 copy];
    widgetEngagement = v27->_widgetEngagement;
    v27->_widgetEngagement = v42;

    v27->_appSessionStartMethod = a12;
    v27->_appSessionNotificationType = a13;
  }

  return v27;
}

- (FRAnalyticsReferral)initWithAppSessionStartFromNotificationType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = FRAnalyticsReferral;
  result = [(FRAnalyticsReferral *)&v5 init];
  if (result)
  {
    result->_appSessionStartMethod = 3;
    result->_appSessionNotificationType = a3;
  }

  return result;
}

- (FRAnalyticsReferral)initWithAppSessionStartMethod:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = FRAnalyticsReferral;
  v4 = [(FRAnalyticsReferral *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(FRAnalyticsReferral *)v4 setAppSessionStartMethod:a3];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FRAnalyticsReferral allocWithZone:?]];
  v5 = [(FRAnalyticsReferral *)self userActivityType];
  [(FRAnalyticsReferral *)v4 setUserActivityType:v5];

  v6 = [(FRAnalyticsReferral *)self creativeID];
  [(FRAnalyticsReferral *)v4 setCreativeID:v6];

  v7 = [(FRAnalyticsReferral *)self campaignID];
  [(FRAnalyticsReferral *)v4 setCampaignID:v7];

  v8 = [(FRAnalyticsReferral *)self campaignType];
  [(FRAnalyticsReferral *)v4 setCampaignType:v8];

  v9 = [(FRAnalyticsReferral *)self referringApplication];
  [(FRAnalyticsReferral *)v4 setReferringApplication:v9];

  v10 = [(FRAnalyticsReferral *)self referringURL];
  [(FRAnalyticsReferral *)v4 setReferringURL:v10];

  [(FRAnalyticsReferral *)v4 setAppOpenedByUserActivity:[(FRAnalyticsReferral *)self appOpenedByUserActivity]];
  v11 = [(FRAnalyticsReferral *)self widgetModeGroupID];
  [(FRAnalyticsReferral *)v4 setWidgetModeGroupID:v11];

  v12 = [(FRAnalyticsReferral *)self widgetEngagement];
  [(FRAnalyticsReferral *)v4 setWidgetEngagement:v12];

  [(FRAnalyticsReferral *)v4 setAppSessionStartMethod:[(FRAnalyticsReferral *)self appSessionStartMethod]];
  return v4;
}

@end