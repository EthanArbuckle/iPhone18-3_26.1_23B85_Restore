@interface BEKeyEntry
- (id)_initWithUIKitKeyEvent:(id)event;
@end

@implementation BEKeyEntry

- (id)_initWithUIKitKeyEvent:(id)event
{
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = BEKeyEntry;
  v6 = [(BEKeyEntry *)&v15 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_backingKeyEvent, event);
    v8 = objc_alloc_init(MEMORY[0x1E69DCB98]);
    v9 = p_isa[2];
    p_isa[2] = v8;

    [p_isa[2] _setKeyCode:{objc_msgSend(eventCopy, "keyCode")}];
    v10 = p_isa[2];
    characters = [eventCopy characters];
    [v10 _setModifiedInput:characters];

    v12 = p_isa[2];
    charactersIgnoringModifiers = [eventCopy charactersIgnoringModifiers];
    [v12 _setUnmodifiedInput:charactersIgnoringModifiers];

    [p_isa[2] _setModifierFlags:{objc_msgSend(eventCopy, "modifierFlags")}];
  }

  return p_isa;
}

@end