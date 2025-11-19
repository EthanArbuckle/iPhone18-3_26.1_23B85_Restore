@interface MapsInterruptionAction
+ (id)actionWithTitle:(id)a3 cancels:(BOOL)a4 handler:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)fire;
@end

@implementation MapsInterruptionAction

+ (id)actionWithTitle:(id)a3 cancels:(BOOL)a4 handler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(a1);
  [v10 setTitle:v9];

  [v10 setCancels:v5];
  [v10 setHandler:v8];

  return v10;
}

- (void)fire
{
  v3 = [(MapsInterruptionAction *)self handler];

  if (v3)
  {
    v4 = [(MapsInterruptionAction *)self handler];
    [(MapsInterruptionAction *)self setHandler:0];
    v4[2]();
  }
}

- (id)copyWithZone:(_NSZone *)a3
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