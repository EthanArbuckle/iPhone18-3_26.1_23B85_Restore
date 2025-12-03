@interface _AKMessageForwarder
- (_AKMessageForwarder)initWithReceiver:(id)receiver strong:(BOOL)strong;
- (_AKMessageForwarder)initWithStrongReceiver:(id)receiver;
- (_AKMessageForwarder)initWithWeakReceiver:(id)receiver;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)activate;
@end

@implementation _AKMessageForwarder

- (_AKMessageForwarder)initWithReceiver:(id)receiver strong:(BOOL)strong
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, receiver);
  strongCopy = strong;
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = _AKMessageForwarder;
  selfCopy = [(_AKMessageForwarder *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    if (strongCopy)
    {
      objc_storeStrong(&selfCopy->_strongReceiver, location[0]);
    }

    else
    {
      objc_storeWeak(&selfCopy->_weakReceiver, location[0]);
    }
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (_AKMessageForwarder)initWithWeakReceiver:(id)receiver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, receiver);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(_AKMessageForwarder *)v3 initWithReceiver:location[0] strong:0];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (_AKMessageForwarder)initWithStrongReceiver:(id)receiver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, receiver);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(_AKMessageForwarder *)v3 initWithReceiver:location[0] strong:1];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)activate
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  [currentConnection setShouldHandleInvalidation:1];
  MEMORY[0x1E69E5920](currentConnection);
}

- (id)forwardingTargetForSelector:(SEL)selector
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