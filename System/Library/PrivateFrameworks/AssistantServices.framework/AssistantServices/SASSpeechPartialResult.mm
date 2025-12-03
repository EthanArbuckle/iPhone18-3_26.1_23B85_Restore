@interface SASSpeechPartialResult
- (id)description;
@end

@implementation SASSpeechPartialResult

- (id)description
{
  v3 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = SASSpeechPartialResult;
  v4 = [(SASSpeechPartialResult *)&v8 description];
  af_bestTextInterpretation = [(SASSpeechPartialResult *)self af_bestTextInterpretation];
  v6 = [v3 initWithFormat:@"%@ Partial Recognition Text: %@", v4, af_bestTextInterpretation];

  return v6;
}

@end