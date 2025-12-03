@interface MapsInterruptionAction
+ (id)actionWithTitle:(id)title cancels:(BOOL)cancels handler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
- (void)fire;
@end

@implementation MapsInterruptionAction

+ (id)actionWithTitle:(id)title cancels:(BOOL)cancels handler:(id)handler
{
  cancelsCopy = cancels;
  handlerCopy = handler;
  titleCopy = title;
  v10 = objc_alloc_init(self);
  [v10 setTitle:titleCopy];

  [v10 setCancels:cancelsCopy];
  [v10 setHandler:handlerCopy];

  return v10;
}

- (void)fire
{
  handler = [(MapsInterruptionAction *)self handler];

  if (handler)
  {
    handler2 = [(MapsInterruptionAction *)self handler];
    [(MapsInterruptionAction *)self setHandler:0];
    handler2[2]();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 2, self->_title);
  *(v4 + 8) = self->_cancels;
  v5 = objc_retainBlock(self->_handler);
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

@end