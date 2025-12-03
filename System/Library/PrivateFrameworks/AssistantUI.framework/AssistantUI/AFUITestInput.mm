@interface AFUITestInput
+ (id)_baseRequestOptions;
- (AFUITestInput)initWithRecordedSpeechURL:(id)l;
- (AFUITestInput)initWithText:(id)text;
- (id)_initWithRequestOptions:(id)options;
@end

@implementation AFUITestInput

+ (id)_baseRequestOptions
{
  v2 = [objc_alloc(MEMORY[0x277D55198]) initWithRequestSource:15 uiPresentationIdentifier:@"com.apple.siri.Compact"];

  return v2;
}

- (id)_initWithRequestOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = AFUITestInput;
  v6 = [(AFUITestInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestOptions, options);
  }

  return v7;
}

- (AFUITestInput)initWithText:(id)text
{
  textCopy = text;
  _baseRequestOptions = [objc_opt_class() _baseRequestOptions];
  [_baseRequestOptions setText:textCopy];

  v6 = [(AFUITestInput *)self _initWithRequestOptions:_baseRequestOptions];
  return v6;
}

- (AFUITestInput)initWithRecordedSpeechURL:(id)l
{
  lCopy = l;
  _baseRequestOptions = [objc_opt_class() _baseRequestOptions];
  [_baseRequestOptions setSpeechFileURL:lCopy];

  v6 = [(AFUITestInput *)self _initWithRequestOptions:_baseRequestOptions];
  return v6;
}

@end