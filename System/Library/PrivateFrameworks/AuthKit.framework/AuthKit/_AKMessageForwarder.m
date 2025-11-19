@interface _AKMessageForwarder
- (_AKMessageForwarder)initWithReceiver:(id)a3 strong:(BOOL)a4;
- (_AKMessageForwarder)initWithStrongReceiver:(id)a3;
- (_AKMessageForwarder)initWithWeakReceiver:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)activate;
@end

@implementation _AKMessageForwarder

- (_AKMessageForwarder)initWithReceiver:(id)a3 strong:(BOOL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = _AKMessageForwarder;
  v11 = [(_AKMessageForwarder *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    if (v9)
    {
      objc_storeStrong(&v11->_strongReceiver, location[0]);
    }

    else
    {
      objc_storeWeak(&v11->_weakReceiver, location[0]);
    }
  }

  v6 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (_AKMessageForwarder)initWithWeakReceiver:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [(_AKMessageForwarder *)v3 initWithReceiver:location[0] strong:0];
  v5 = MEMORY[0x1E69E5928](v7);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v5;
}

- (_AKMessageForwarder)initWithStrongReceiver:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [(_AKMessageForwarder *)v3 initWithReceiver:location[0] strong:1];
  v5 = MEMORY[0x1E69E5928](v7);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v5;
}

- (void)activate
{
  v2 = [MEMORY[0x1E696B0B8] currentConnection];
  [v2 setShouldHandleInvalidation:1];
  MEMORY[0x1E69E5920](v2);
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  [(_AKMessageForwarder *)self activate];
  WeakRetained = objc_loadWeakRetained(&self->_weakReceiver);
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E69E5928](WeakRetained);
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](self->_strongReceiver);
  }

  v5 = v3;
  MEMORY[0x1E69E5920](WeakRetained);

  return v5;
}

@end