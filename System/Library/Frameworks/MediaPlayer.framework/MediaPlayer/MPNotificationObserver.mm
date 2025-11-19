@interface MPNotificationObserver
- (MPNotificationObserver)initWithName:(id)a3 object:(id)a4 handler:(id)a5;
- (id)object;
- (void)dealloc;
@end

@implementation MPNotificationObserver

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  name = self->_name;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  [v3 removeObserver:self name:name object:WeakRetained];

  v6.receiver = self;
  v6.super_class = MPNotificationObserver;
  [(MPNotificationObserver *)&v6 dealloc];
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (MPNotificationObserver)initWithName:(id)a3 object:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MPNotificationObserver;
  v11 = [(MPNotificationObserver *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeWeak(&v11->_object, v9);
    v14 = [v10 copy];
    handler = v11->_handler;
    v11->_handler = v14;

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v11 selector:sel__handleNotification_ name:v8 object:v9];
  }

  return v11;
}

@end