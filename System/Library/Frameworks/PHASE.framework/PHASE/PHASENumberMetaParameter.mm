@interface PHASENumberMetaParameter
- (PHASENumberMetaParameter)init;
- (PHASENumberMetaParameter)initWithUID:(id)a3 delegate:(id)a4;
- (PHASENumberMetaParameter)initWithUID:(id)a3 value:(double)a4 rangeMin:(double)a5 rangeMax:(double)a6 delegate:(id)a7;
- (void)fadeToValue:(double)value duration:(NSTimeInterval)duration;
@end

@implementation PHASENumberMetaParameter

- (PHASENumberMetaParameter)init
{
  [(PHASENumberMetaParameter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASENumberMetaParameter)initWithUID:(id)a3 delegate:(id)a4
{
  [(PHASENumberMetaParameter *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (PHASENumberMetaParameter)initWithUID:(id)a3 value:(double)a4 rangeMin:(double)a5 rangeMax:(double)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a7;
  v19.receiver = self;
  v19.super_class = PHASENumberMetaParameter;
  v14 = [(PHASEMetaParameter *)&v19 initWithUID:v12 delegate:v13];
  v15 = v14;
  if (v14)
  {
    v14->_minimum = a5;
    v14->_maximum = a6;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [(PHASEMetaParameter *)v15 setValue:v16];

    v17 = v15;
  }

  return v15;
}

- (void)fadeToValue:(double)value duration:(NSTimeInterval)duration
{
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(PHASEMetaParameter *)self setLocalValueOnly:?];

  v9 = [(PHASEMetaParameter *)self delegate];
  v7 = [(PHASEMetaParameter *)self identifier];
  [v9 setMetaParameter:v7 value:value withTimeInterval:duration];
}

@end