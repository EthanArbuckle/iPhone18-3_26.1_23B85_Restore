@interface AVTwoPartKeyPath
- (void)dealloc;
@end

@implementation AVTwoPartKeyPath

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVTwoPartKeyPath;
  [(AVTwoPartKeyPath *)&v3 dealloc];
}

@end