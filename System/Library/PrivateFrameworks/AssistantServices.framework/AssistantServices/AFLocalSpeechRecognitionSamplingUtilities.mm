@interface AFLocalSpeechRecognitionSamplingUtilities
+ (BOOL)isFileNameValid:(id)a3;
+ (id)dateFromFileName:(id)a3;
+ (id)samplingDateAsString;
@end

@implementation AFLocalSpeechRecognitionSamplingUtilities

+ (id)dateFromFileName:(id)a3
{
  v4 = MEMORY[0x1E696AE70];
  v5 = a3;
  v6 = [v4 regularExpressionWithPattern:@"^\\D+-" options:0 error:0];
  v7 = [v6 stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), &stru_1F0512680}];

  v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\.\\d+(\\.\\w+)?$" options:0 error:0];
  v9 = [v8 stringByReplacingMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), &stru_1F0512680}];
  v10 = [a1 dateFormatter];
  v11 = [v10 dateFromString:v9];

  return v11;
}

+ (BOOL)isFileNameValid:(id)a3
{
  v3 = [a1 dateFromFileName:a3];
  v4 = v3 != 0;

  return v4;
}

+ (id)samplingDateAsString
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [a1 dateFormatter];
  v5 = [v4 stringFromDate:v3];

  return v5;
}

@end