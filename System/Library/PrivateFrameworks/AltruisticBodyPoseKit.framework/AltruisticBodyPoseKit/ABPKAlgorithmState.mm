@interface ABPKAlgorithmState
- (ABPKAlgorithmState)init;
- (id)toDict;
@end

@implementation ABPKAlgorithmState

- (ABPKAlgorithmState)init
{
  v3.receiver = self;
  v3.super_class = ABPKAlgorithmState;
  result = [(ABPKAlgorithmState *)&v3 init];
  *&result->_image_preprocessing = 0;
  result->_retargeting = 0;
  return result;
}

- (id)toDict
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_image_preprocessing];
  [v3 setObject:v4 forKey:@"image_preprocessing"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_detection2d];
  [v3 setObject:v5 forKey:@"detection2d"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_lifting3d];
  [v3 setObject:v6 forKey:@"lifting3d"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_registration];
  [v3 setObject:v7 forKey:@"registration"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_retargeting];
  [v3 setObject:v8 forKey:@"retargeting"];

  return v3;
}

@end