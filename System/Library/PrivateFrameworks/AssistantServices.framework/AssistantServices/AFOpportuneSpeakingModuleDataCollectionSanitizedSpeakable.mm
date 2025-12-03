@interface AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable
- (AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable)initWithDate:(id)date;
@end

@implementation AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable

- (AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable)initWithDate:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable;
  v6 = [(AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable *)&v11 init];
  if (v6)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = uUIDString;

    objc_storeStrong(&v6->_date, date);
  }

  return v6;
}

@end