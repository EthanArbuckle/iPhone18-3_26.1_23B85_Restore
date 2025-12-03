@interface SecLaunchEvent
- (SecLaunchEvent)initWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SecLaunchEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  name = [(SecLaunchEvent *)self name];
  v7 = [name copyWithZone:zone];
  [v5 setName:v7];

  date = [(SecLaunchEvent *)self date];
  v9 = [date copyWithZone:zone];
  [v5 setDate:v9];

  [v5 setCounter:{-[SecLaunchEvent counter](self, "counter")}];
  return v5;
}

- (SecLaunchEvent)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = SecLaunchEvent;
  v6 = [(SecLaunchEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    date = [MEMORY[0x1E695DF00] date];
    date = v7->_date;
    v7->_date = date;

    v7->_counter = 1;
  }

  return v7;
}

@end