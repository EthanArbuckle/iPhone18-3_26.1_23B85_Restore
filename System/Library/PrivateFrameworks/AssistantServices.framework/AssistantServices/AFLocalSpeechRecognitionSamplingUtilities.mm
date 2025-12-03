@interface AFLocalSpeechRecognitionSamplingUtilities
+ (BOOL)isFileNameValid:(id)valid;
+ (id)dateFromFileName:(id)name;
+ (id)samplingDateAsString;
@end

@implementation AFLocalSpeechRecognitionSamplingUtilities

+ (id)dateFromFileName:(id)name
{
  v4 = MEMORY[0x1E696AE70];
  nameCopy = name;
  v6 = [v4 regularExpressionWithPattern:@"^\\D+-" options:0 error:0];
  v7 = [v6 stringByReplacingMatchesInString:nameCopy options:0 range:0 withTemplate:{objc_msgSend(nameCopy, "length"), &stru_1F0512680}];

  v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\.\\d+(\\.\\w+)?$" options:0 error:0];
  v9 = [v8 stringByReplacingMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), &stru_1F0512680}];
  dateFormatter = [self dateFormatter];
  v11 = [dateFormatter dateFromString:v9];

  return v11;
}

+ (BOOL)isFileNameValid:(id)valid
{
  v3 = [self dateFromFileName:valid];
  v4 = v3 != 0;

  return v4;
}

+ (id)samplingDateAsString
{
  date = [MEMORY[0x1E695DF00] date];
  dateFormatter = [self dateFormatter];
  v5 = [dateFormatter stringFromDate:date];

  return v5;
}

@end