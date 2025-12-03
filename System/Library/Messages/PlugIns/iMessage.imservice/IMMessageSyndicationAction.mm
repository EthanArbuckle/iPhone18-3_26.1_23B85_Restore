@interface IMMessageSyndicationAction
- (void)addParametersToSendMessageDictionary:(id)dictionary;
@end

@implementation IMMessageSyndicationAction

- (void)addParametersToSendMessageDictionary:(id)dictionary
{
  v13.receiver = self;
  v13.super_class = IMMessageSyndicationAction;
  dictionaryCopy = dictionary;
  [(IMMessageSyndicationAction *)&v13 addParametersToSendMessageDictionary:dictionaryCopy];
  v5 = [(IMMessageSyndicationAction *)self messagePartRange:v13.receiver];
  v7 = v6;
  v8 = [NSNumber numberWithUnsignedInteger:v5];
  [dictionaryCopy setObject:v8 forKeyedSubscript:IMSyndicationActionRangeLocationKey];

  v9 = [NSNumber numberWithUnsignedInteger:v7];
  [dictionaryCopy setObject:v9 forKeyedSubscript:IMSyndicationActionRangeLengthKey];

  messagePartGUID = [(IMMessageSyndicationAction *)self messagePartGUID];
  encodedMessagePartGUID = [messagePartGUID encodedMessagePartGUID];
  v12 = [encodedMessagePartGUID copy];
  [dictionaryCopy setObject:v12 forKeyedSubscript:IMSyndicationActionMessagePartGUIDKey];
}

@end