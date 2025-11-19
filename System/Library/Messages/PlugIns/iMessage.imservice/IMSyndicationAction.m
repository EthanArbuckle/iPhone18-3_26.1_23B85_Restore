@interface IMSyndicationAction
- (void)addParametersToSendMessageDictionary:(id)a3;
@end

@implementation IMSyndicationAction

- (void)addParametersToSendMessageDictionary:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedChar:0];
  [v4 setObject:v5 forKeyedSubscript:IMSyndicationActionTypeKey_v1];

  v6 = [NSNumber numberWithUnsignedChar:[(IMSyndicationAction *)self syndicationActionType]];
  [v4 setObject:v6 forKeyedSubscript:IMSyndicationActionTypeKey_v2];

  v7 = objc_opt_class();
  v8 = [(IMSyndicationAction *)self syndicationStartDate];
  v9 = [v7 nanoSecondsFromDate:v8];
  [v4 setObject:v9 forKeyedSubscript:IMSyndicationActionSyndicationDateKey];

  v10 = [NSNumber numberWithUnsignedChar:[(IMSyndicationAction *)self syndicatedItemType]];
  [v4 setObject:v10 forKeyedSubscript:IMSyndicationActionItemTypeKey];

  v11 = [NSNumber numberWithUnsignedChar:[(IMSyndicationAction *)self version]];
  [v4 setObject:v11 forKeyedSubscript:IMSyndicationActionVersionKey];
}

@end