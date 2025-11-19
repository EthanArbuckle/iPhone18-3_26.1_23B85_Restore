@interface AVEventManagerAction
+ (id)actionWithBlock:(id)a3 event:(id)a4;
+ (id)actionWithTarget:(id)a3 selector:(SEL)a4 event:(id)a5;
- (AVEventManagerAction)initWithEvent:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation AVEventManagerAction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  event = self->_event;
  if (event == v4->_event)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [(NSString *)event isEqualToString:?];
  }

LABEL_7:

  return v6;
}

- (AVEventManagerAction)initWithEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVEventManagerAction;
  v6 = [(AVEventManagerAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
  }

  return v7;
}

+ (id)actionWithTarget:(id)a3 selector:(SEL)a4 event:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[AVEventManagerSelectorAction alloc] initWithTarget:v8 selector:a4 event:v7];

  return v9;
}

+ (id)actionWithBlock:(id)a3 event:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AVEventManagerBlockAction alloc] initWithBlock:v6 event:v5];

  return v7;
}

@end