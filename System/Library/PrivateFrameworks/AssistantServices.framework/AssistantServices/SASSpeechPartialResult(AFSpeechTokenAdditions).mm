@interface SASSpeechPartialResult(AFSpeechTokenAdditions)
+ (id)createUsingPhrases:()AFSpeechTokenAdditions andUtterances:;
@end

@implementation SASSpeechPartialResult(AFSpeechTokenAdditions)

+ (id)createUsingPhrases:()AFSpeechTokenAdditions andUtterances:
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  array = [v6 array];
  firstObject = [v7 firstObject];

  interpretationIndices = [firstObject interpretationIndices];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __83__SASSpeechPartialResult_AFSpeechTokenAdditions__createUsingPhrases_andUtterances___block_invoke;
  v18 = &unk_1E7342ED0;
  v19 = v5;
  v20 = array;
  v11 = array;
  v12 = v5;
  [interpretationIndices enumerateObjectsUsingBlock:&v15];

  v13 = objc_alloc_init(MEMORY[0x1E69C79F8]);
  [v13 setTokens:{v11, v15, v16, v17, v18}];

  return v13;
}

@end