@interface FloatingButtonItem
+ (FloatingButtonItem)separatorItem;
- (FloatingButtonItem)initWithButton:(id)a3 option:(int64_t)a4;
- (void)registerHidesBackgroundChangeHandler:(id)a3;
- (void)setHideBackground:(BOOL)a3;
@end

@implementation FloatingButtonItem

+ (FloatingButtonItem)separatorItem
{
  if (qword_10195CD78 != -1)
  {
    dispatch_once(&qword_10195CD78, &stru_101624328);
  }

  v3 = qword_10195CD70;

  return v3;
}

- (void)setHideBackground:(BOOL)a3
{
  if (self->_hideBackground != a3)
  {
    self->_hideBackground = a3;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_hidesBackgroundChangeHandlers;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)registerHidesBackgroundChangeHandler:(id)a3
{
  v4 = a3;
  hidesBackgroundChangeHandlers = self->_hidesBackgroundChangeHandlers;
  v9 = v4;
  if (!hidesBackgroundChangeHandlers)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:1];
    v7 = self->_hidesBackgroundChangeHandlers;
    self->_hidesBackgroundChangeHandlers = v6;

    v4 = v9;
    hidesBackgroundChangeHandlers = self->_hidesBackgroundChangeHandlers;
  }

  v8 = [v4 copy];
  [(NSMutableArray *)hidesBackgroundChangeHandlers addObject:v8];
}

- (FloatingButtonItem)initWithButton:(id)a3 option:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FloatingButtonItem;
  v8 = [(FloatingButtonItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_button, a3);
    v9->_option = a4;
  }

  return v9;
}

@end