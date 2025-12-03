@interface BCPreloader
+ (BCPreloader)shared;
- (BCPreloader)init;
- (void)preloadResourcesWithCompletion:(id)completion;
@end

@implementation BCPreloader

- (BCPreloader)init
{
  v2 = (self + OBJC_IVAR___BCPreloader_resourceLoadToken);
  *v2 = 0u;
  v2[1] = 0u;
  *(&self->super.isa + OBJC_IVAR___BCPreloader_cancellableBag) = MEMORY[0x277D84FA0];
  v4.receiver = self;
  v4.super_class = type metadata accessor for Preloader();
  return [(BCPreloader *)&v4 init];
}

+ (BCPreloader)shared
{
  if (qword_2812185F8 != -1)
  {
    swift_once();
  }

  v3 = qword_281218600;

  return v3;
}

- (void)preloadResourcesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_23DDE4310;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_23DDC73C4(v7, v6);
  sub_23DDCC0D8(v7);
}

@end