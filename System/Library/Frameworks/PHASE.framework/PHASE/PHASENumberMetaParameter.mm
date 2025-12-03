@interface PHASENumberMetaParameter
- (PHASENumberMetaParameter)init;
- (PHASENumberMetaParameter)initWithUID:(id)d delegate:(id)delegate;
- (PHASENumberMetaParameter)initWithUID:(id)d value:(double)value rangeMin:(double)min rangeMax:(double)max delegate:(id)delegate;
- (void)fadeToValue:(double)value duration:(NSTimeInterval)duration;
@end

@implementation PHASENumberMetaParameter

- (PHASENumberMetaParameter)init
{
  [(PHASENumberMetaParameter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASENumberMetaParameter)initWithUID:(id)d delegate:(id)delegate
{
  [(PHASENumberMetaParameter *)self doesNotRecognizeSelector:a2, delegate];

  return 0;
}

- (PHASENumberMetaParameter)initWithUID:(id)d value:(double)value rangeMin:(double)min rangeMax:(double)max delegate:(id)delegate
{
  dCopy = d;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = PHASENumberMetaParameter;
  v14 = [(PHASEMetaParameter *)&v19 initWithUID:dCopy delegate:delegateCopy];
  v15 = v14;
  if (v14)
  {
    v14->_minimum = min;
    v14->_maximum = max;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:value];
    [(PHASEMetaParameter *)v15 setValue:v16];

    v17 = v15;
  }

  return v15;
}

- (void)fadeToValue:(double)value duration:(NSTimeInterval)duration
{
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(PHASEMetaParameter *)self setLocalValueOnly:?];

  delegate = [(PHASEMetaParameter *)self delegate];
  identifier = [(PHASEMetaParameter *)self identifier];
  [delegate setMetaParameter:identifier value:value withTimeInterval:duration];
}

@end