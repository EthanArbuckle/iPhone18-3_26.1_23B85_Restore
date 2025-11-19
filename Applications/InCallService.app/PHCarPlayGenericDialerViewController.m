@interface PHCarPlayGenericDialerViewController
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation PHCarPlayGenericDialerViewController

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
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
          v14 = [(PHCarPlayGenericDialerViewController *)self dialerController];
          v15 = [v14 dialerView];
          v16 = [v15 phonePadView];
          [v16 performTapActionDownForHighlightedKey];
        }

        if ([v13 type] == 2 || objc_msgSend(v13, "type") == 3)
        {
          [v8 removeObject:v13];
          v17 = [(PHCarPlayGenericDialerViewController *)self view];
          v18 = [v17 window];
          v19 = [NSSet setWithObject:v13];
          [v18 pressesBegan:v19 withEvent:v7];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v21.receiver = self;
  v21.super_class = PHCarPlayGenericDialerViewController;
  [(PHCarPlayGenericDialerViewController *)&v21 pressesBegan:v8 withEvent:v7];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
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
          v14 = [(PHCarPlayGenericDialerViewController *)self dialerController];
          v15 = [v14 dialerView];
          v16 = [v15 phonePadView];
          [v16 performTapActionEndForHighlightedKey];

          [(PHCarPlayGenericDialerViewController *)self setHandlingKeypadPress:0];
        }

        if ([v13 type] == 2 || objc_msgSend(v13, "type") == 3)
        {
          [v8 removeObject:v13];
          v17 = [(PHCarPlayGenericDialerViewController *)self view];
          v18 = [v17 window];
          v19 = [NSSet setWithObject:v13];
          [v18 pressesEnded:v19 withEvent:v7];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v21.receiver = self;
  v21.super_class = PHCarPlayGenericDialerViewController;
  [(PHCarPlayGenericDialerViewController *)&v21 pressesEnded:v8 withEvent:v7];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  if ([(PHCarPlayGenericDialerViewController *)self handlingKeypadPress])
  {
    v9 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    v10 = [v9 dialerView];
    v11 = [v10 phonePadView];
    [v11 performTapActionCancelForHighlightedKey];

    [(PHCarPlayGenericDialerViewController *)self setHandlingKeypadPress:0];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v6;
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
          v18 = [(PHCarPlayGenericDialerViewController *)self view];
          v19 = [v18 window];
          v20 = [NSSet setWithObject:v17];
          [v19 pressesCancelled:v20 withEvent:v7];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v21.receiver = self;
  v21.super_class = PHCarPlayGenericDialerViewController;
  [(PHCarPlayGenericDialerViewController *)&v21 pressesCancelled:v8 withEvent:v7];
}

@end