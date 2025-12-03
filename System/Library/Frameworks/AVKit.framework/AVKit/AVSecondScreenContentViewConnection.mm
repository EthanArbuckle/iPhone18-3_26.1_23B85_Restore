@interface AVSecondScreenContentViewConnection
- (AVSecondScreenContentViewConnection)initWithContentView:(id)view;
- (void)dealloc;
- (void)startUpdates;
@end

@implementation AVSecondScreenContentViewConnection

- (void)startUpdates
{
  observationController = [(AVSecondScreenConnection *)self observationController];

  if (!observationController)
  {
    v4 = [[AVObservationController alloc] initWithOwner:self];
    [(AVSecondScreenConnection *)self setObservationController:v4];

    observationController2 = [(AVSecondScreenConnection *)self observationController];
    v6 = [observationController2 startObserving:self keyPath:@"player.currentItem.asset" observationHandler:&__block_literal_global_189_26940];

    [(AVSecondScreenConnection *)self _updatePreferredDisplayCriteria];
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  observationController = [(AVSecondScreenConnection *)self observationController];
  [observationController stopAllObservation];

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[AVSecondScreenContentViewConnection dealloc]";
    v8 = 1024;
    v9 = 380;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v5.receiver = self;
  v5.super_class = AVSecondScreenContentViewConnection;
  [(AVSecondScreenConnection *)&v5 dealloc];
}

- (AVSecondScreenContentViewConnection)initWithContentView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = AVSecondScreenContentViewConnection;
  v5 = [(AVSecondScreenContentViewConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AVSecondScreenConnection *)v5 setContentView:viewCopy];
  }

  return v6;
}

@end