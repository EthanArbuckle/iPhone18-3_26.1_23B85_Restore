@interface PHCarPlayGenericDialerViewController
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation PHCarPlayGenericDialerViewController

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v8 = [beganCopy mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = beganCopy;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 type] == 4)
        {
          [v8 removeObject:v13];
          dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
          dialerView = [dialerController dialerView];
          phonePadView = [dialerView phonePadView];
          [phonePadView performTapActionDownForHighlightedKey];
        }

        if ([v13 type] == 2 || objc_msgSend(v13, "type") == 3)
        {
          [v8 removeObject:v13];
          view = [(PHCarPlayGenericDialerViewController *)self view];
          window = [view window];
          v19 = [NSSet setWithObject:v13];
          [window pressesBegan:v19 withEvent:eventCopy];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v21.receiver = self;
  v21.super_class = PHCarPlayGenericDialerViewController;
  [(PHCarPlayGenericDialerViewController *)&v21 pressesBegan:v8 withEvent:eventCopy];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  v8 = [endedCopy mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = endedCopy;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 type] == 4)
        {
          [v8 removeObject:v13];
          dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
          dialerView = [dialerController dialerView];
          phonePadView = [dialerView phonePadView];
          [phonePadView performTapActionEndForHighlightedKey];

          [(PHCarPlayGenericDialerViewController *)self setHandlingKeypadPress:0];
        }

        if ([v13 type] == 2 || objc_msgSend(v13, "type") == 3)
        {
          [v8 removeObject:v13];
          view = [(PHCarPlayGenericDialerViewController *)self view];
          window = [view window];
          v19 = [NSSet setWithObject:v13];
          [window pressesEnded:v19 withEvent:eventCopy];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v21.receiver = self;
  v21.super_class = PHCarPlayGenericDialerViewController;
  [(PHCarPlayGenericDialerViewController *)&v21 pressesEnded:v8 withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  v8 = [cancelledCopy mutableCopy];
  if ([(PHCarPlayGenericDialerViewController *)self handlingKeypadPress])
  {
    dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
    dialerView = [dialerController dialerView];
    phonePadView = [dialerView phonePadView];
    [phonePadView performTapActionCancelForHighlightedKey];

    [(PHCarPlayGenericDialerViewController *)self setHandlingKeypadPress:0];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = cancelledCopy;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if ([v17 type] == 2 || objc_msgSend(v17, "type") == 3)
        {
          [v8 removeObject:v17];
          view = [(PHCarPlayGenericDialerViewController *)self view];
          window = [view window];
          v20 = [NSSet setWithObject:v17];
          [window pressesCancelled:v20 withEvent:eventCopy];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v21.receiver = self;
  v21.super_class = PHCarPlayGenericDialerViewController;
  [(PHCarPlayGenericDialerViewController *)&v21 pressesCancelled:v8 withEvent:eventCopy];
}

@end