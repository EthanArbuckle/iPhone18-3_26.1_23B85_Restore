@interface IMSyndicationAction
- (void)addParametersToSendMessageDictionary:(id)dictionary;
@end

@implementation IMSyndicationAction

- (void)addParametersToSendMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [NSNumber numberWithUnsignedChar:0];
  [dictionaryCopy setObject:v5 forKeyedSubscript:IMSyndicationActionTypeKey_v1];

  v6 = [NSNumber numberWithUnsignedChar:[(IMSyndicationAction *)self syndicationActionType]];
  [dictionaryCopy setObject:v6 forKeyedSubscript:IMSyndicationActionTypeKey_v2];

  v7 = objc_opt_class();
  syndicationStartDate = [(IMSyndicationAction *)self syndicationStartDate];
  v9 = [v7 nanoSecondsFromDate:syndicationStartDate];
  [dictionaryCopy setObject:v9 forKeyedSubscript:IMSyndicationActionSyndicationDateKey];

  v10 = [NSNumber numberWithUnsignedChar:[(IMSyndicationAction *)self syndicatedItemType]];
  [dictionaryCopy setObject:v10 forKeyedSubscript:IMSyndicationActionItemTypeKey];

  v11 = [NSNumber numberWithUnsignedChar:[(IMSyndicationAction *)self version]];
  [dictionaryCopy setObject:v11 forKeyedSubscript:IMSyndicationActionVersionKey];
}

@end