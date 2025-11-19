@interface BEKeyEntry
- (id)_initWithUIKitKeyEvent:(id)a3;
@end

@implementation BEKeyEntry

- (id)_initWithUIKitKeyEvent:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = BEKeyEntry;
  v6 = [(BEKeyEntry *)&v15 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_backingKeyEvent, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69DCB98]);
    v9 = p_isa[2];
    p_isa[2] = v8;

    [p_isa[2] _setKeyCode:{objc_msgSend(v5, "keyCode")}];
    v10 = p_isa[2];
    v11 = [v5 characters];
    [v10 _setModifiedInput:v11];

    v12 = p_isa[2];
    v13 = [v5 charactersIgnoringModifiers];
    [v12 _setUnmodifiedInput:v13];

    [p_isa[2] _setModifierFlags:{objc_msgSend(v5, "modifierFlags")}];
  }

  return p_isa;
}

@end