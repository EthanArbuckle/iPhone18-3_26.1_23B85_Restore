@interface CheckboxComponent
- (void)handleTap;
- (void)prepareForReuse;
@end

@implementation CheckboxComponent

- (void)prepareForReuse
{
  v2 = self;
  sub_24FF4();
}

- (void)handleTap
{
  v2 = self;
  sub_25C0C();
}

@end