@interface MPNotificationObserver
- (MPNotificationObserver)initWithName:(id)name object:(id)object handler:(id)handler;
- (id)object;
- (void)dealloc;
@end

@implementation MPNotificationObserver

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  name = self->_name;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  [defaultCenter removeObserver:self name:name object:WeakRetained];

  v6.receiver = self;
  v6.super_class = MPNotificationObserver;
  [(MPNotificationObserver *)&v6 dealloc];
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (MPNotificationObserver)initWithName:(id)name object:(id)object handler:(id)handler
{
  nameCopy = name;
  objectCopy = object;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = MPNotificationObserver;
  v11 = [(MPNotificationObserver *)&v18 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeWeak(&v11->_object, objectCopy);
    v14 = [handlerCopy copy];
    handler = v11->_handler;
    v11->_handler = v14;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__handleNotification_ name:nameCopy object:objectCopy];
  }

  return v11;
}

@end