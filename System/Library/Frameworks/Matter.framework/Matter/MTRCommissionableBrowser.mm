@interface MTRCommissionableBrowser
- (BOOL)start;
- (BOOL)stop;
- (MTRCommissionableBrowser)initWithDelegate:(id)a3 controller:(id)a4 queue:(id)a5;
- (id).cxx_construct;
@end

@implementation MTRCommissionableBrowser

- (MTRCommissionableBrowser)initWithDelegate:(id)a3 controller:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MTRCommissionableBrowser;
  v12 = [(MTRCommissionableBrowser *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_delegate, a3);
    objc_storeWeak(&v13->_controller, v10);
    objc_storeStrong(&v13->_queue, a5);
  }

  return v13;
}

- (BOOL)start
{
  v2 = self;
  delegate = self->_delegate;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  LOBYTE(v2) = sub_2393A9A98(&v2->_browser, delegate, WeakRetained, v2->_queue) == 0;

  return v2;
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