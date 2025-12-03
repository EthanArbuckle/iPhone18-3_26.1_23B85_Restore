@interface CMPredictedWalkDistance
+ (BOOL)resetPredictedWalkDistanceOnDate:(id)date error:(id *)error;
@end

@implementation CMPredictedWalkDistance

+ (BOOL)resetPredictedWalkDistanceOnDate:(id)date error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v13 = @"CMPredictedWalkDistanceResetDateKey";
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(date, v6, v7);
  v14[0] = objc_msgSend_numberWithDouble_(v5, v8, v9);
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v14, &v13, 1);
  sub_19B639BD4();
}

@end