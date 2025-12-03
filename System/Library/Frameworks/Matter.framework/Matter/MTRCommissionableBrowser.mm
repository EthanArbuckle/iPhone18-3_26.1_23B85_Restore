@interface MTRCommissionableBrowser
- (BOOL)start;
- (BOOL)stop;
- (MTRCommissionableBrowser)initWithDelegate:(id)delegate controller:(id)controller queue:(id)queue;
- (id).cxx_construct;
@end

@implementation MTRCommissionableBrowser

- (MTRCommissionableBrowser)initWithDelegate:(id)delegate controller:(id)controller queue:(id)queue
{
  delegateCopy = delegate;
  controllerCopy = controller;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = MTRCommissionableBrowser;
  v12 = [(MTRCommissionableBrowser *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_delegate, delegate);
    objc_storeWeak(&v13->_controller, controllerCopy);
    objc_storeStrong(&v13->_queue, queue);
  }

  return v13;
}

- (BOOL)start
{
  selfCopy = self;
  delegate = self->_delegate;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  LOBYTE(selfCopy) = sub_2393A9A98(&selfCopy->_browser, delegate, WeakRetained, selfCopy->_queue) == 0;

  return selfCopy;
}

- (BOOL)stop
{
  v3 = sub_2393A9D90(&self->_browser, self);
  v4 = v3;
  if (!v3)
  {
    delegate = self->_delegate;
    self->_delegate = 0;

    objc_storeWeak(&self->_controller, 0);
    queue = self->_queue;
    self->_queue = 0;
  }

  return v4 == 0;
}

- (id).cxx_construct
{
  *(self + 4) = &unk_284BB7718;
  *(self + 5) = &unk_284BB7770;
  *(self + 6) = &unk_284BB77A8;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end