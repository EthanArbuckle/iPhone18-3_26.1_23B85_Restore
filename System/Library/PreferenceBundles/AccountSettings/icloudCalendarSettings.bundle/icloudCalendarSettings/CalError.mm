@interface CalError
- (CalError)initWithDictionary:(id)dictionary;
@end

@implementation CalError

- (CalError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = CalError;
  v5 = [(CalError *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorTitle"];
    errorTitle = v5->_errorTitle;
    v5->_errorTitle = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorMessage"];
    errorMessage = v5->_errorMessage;
    v5->_errorMessage = v8;
  }

  return v5;
}

@end