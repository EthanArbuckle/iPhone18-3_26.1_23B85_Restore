@interface AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable
- (AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable)initWithDate:(id)a3;
@end

@implementation AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable

- (AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable)initWithDate:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable;
  v6 = [(AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    objc_storeStrong(&v6->_date, a3);
  }

  return v6;
}

@end