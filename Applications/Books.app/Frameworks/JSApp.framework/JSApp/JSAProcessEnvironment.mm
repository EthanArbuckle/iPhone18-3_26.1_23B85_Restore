@interface JSAProcessEnvironment
+ (JSAProcessEnvironment)currentEnvironment;
- (JSAProcessEnvironment)init;
- (void)setup;
@end

@implementation JSAProcessEnvironment

+ (JSAProcessEnvironment)currentEnvironment
{
  if (qword_CA458 != -1)
  {
    swift_once();
  }

  v3 = qword_CB010;

  return v3;
}

- (JSAProcessEnvironment)init
{
  *(&self->super.isa + OBJC_IVAR___JSAProcessEnvironment__variant) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProcessEnvironment();
  return [(JSAProcessEnvironment *)&v3 init];
}

- (void)setup
{
  selfCopy = self;
  sub_59AD0();
}

@end