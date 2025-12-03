@interface AVPublisher
+ (void)initialize;
- (AVPublisher)init;
- (id)subscribeRequestingInitialValue:(BOOL)value block:(id)block;
- (void)dealloc;
@end

@implementation AVPublisher

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (AVPublisher)init
{
  v3.receiver = self;
  v3.super_class = AVPublisher;
  return [(AVPublisher *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVPublisher;
  [(AVPublisher *)&v2 dealloc];
}

- (id)subscribeRequestingInitialValue:(BOOL)value block:(id)block
{
  v6 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v6);
  return 0;
}

@end