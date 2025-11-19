@interface _ATXScoreInterpreterCtx
- (_ATXScoreInterpreterCtx)initWithInputScores:(id)a3 intentType:(id)a4;
@end

@implementation _ATXScoreInterpreterCtx

- (_ATXScoreInterpreterCtx)initWithInputScores:(id)a3 intentType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _ATXScoreInterpreterCtx;
  v9 = [(_ATXScoreInterpreterCtx *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->inputScores, a3);
    objc_storeStrong(&v10->intentType, a4);
    v11 = objc_opt_new();
    subscores = v10->subscores;
    v10->subscores = v11;
  }

  return v10;
}

@end