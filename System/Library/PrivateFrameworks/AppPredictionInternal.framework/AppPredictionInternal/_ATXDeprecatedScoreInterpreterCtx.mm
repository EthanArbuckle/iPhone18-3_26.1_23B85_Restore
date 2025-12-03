@interface _ATXDeprecatedScoreInterpreterCtx
- (_ATXDeprecatedScoreInterpreterCtx)initWithInputScores:(id)scores intentType:(id)type;
@end

@implementation _ATXDeprecatedScoreInterpreterCtx

- (_ATXDeprecatedScoreInterpreterCtx)initWithInputScores:(id)scores intentType:(id)type
{
  scoresCopy = scores;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = _ATXDeprecatedScoreInterpreterCtx;
  v9 = [(_ATXDeprecatedScoreInterpreterCtx *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->inputScores, scores);
    objc_storeStrong(&v10->intentType, type);
    v11 = objc_opt_new();
    subscores = v10->subscores;
    v10->subscores = v11;
  }

  return v10;
}

@end