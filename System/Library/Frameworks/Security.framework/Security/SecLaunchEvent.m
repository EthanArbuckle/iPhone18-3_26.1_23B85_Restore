@interface SecLaunchEvent
- (SecLaunchEvent)initWithName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SecLaunchEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(SecLaunchEvent *)self name];
  v7 = [v6 copyWithZone:a3];
  [v5 setName:v7];

  v8 = [(SecLaunchEvent *)self date];
  v9 = [v8 copyWithZone:a3];
  [v5 setDate:v9];

  [v5 setCounter:{-[SecLaunchEvent counter](self, "counter")}];
  return v5;
}

- (SecLaunchEvent)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SecLaunchEvent;
  v6 = [(SecLaunchEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = [MEMORY[0x1E695DF00] date];
    date = v7->_date;
    v7->_date = v8;

    v7->_counter = 1;
  }

  return v7;
}

@end