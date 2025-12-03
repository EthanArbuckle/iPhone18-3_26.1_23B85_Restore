@interface CheckboxComponent
- (void)handleTap;
- (void)prepareForReuse;
@end

@implementation CheckboxComponent

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24FF4();
}

- (void)handleTap
{
  selfCopy = self;
  sub_25C0C();
}

@end