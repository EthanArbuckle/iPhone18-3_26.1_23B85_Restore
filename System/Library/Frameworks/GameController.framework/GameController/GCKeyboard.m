@interface GCKeyboard
+ (GCKeyboard)coalescedKeyboard;
- (GCKeyboard)init;
- (NSString)debugDescription;
- (NSString)description;
- (int64_t)compareTo:(id)a3;
@end

@implementation GCKeyboard

+ (GCKeyboard)coalescedKeyboard
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  v3 = [v2 keyboards];
  v4 = [(GCDeviceCollection *)v3 underlyingCollection];
  v5 = [v4 anyObject];

  return v5;
}

- (GCKeyboard)init
{
  v7.receiver = self;
  v7.super_class = GCKeyboard;
  v2 = [(GCKeyboard *)&v7 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_handlerQueue, MEMORY[0x1E69E96A0]);
    v4 = objc_alloc_init(GCKeyboardInput);
    keyboardInput = v3->_keyboardInput;
    v3->_keyboardInput = v4;

    [(GCPhysicalInputProfile *)v3->_keyboardInput setDevice:v3];
    v3->_creationSequence = atomic_fetch_add(init_CreationSequence, 1u);
  }

  return v3;
}

- (int64_t)compareTo:(id)a3
{
  v4 = a3;
  v5 = [(GCKeyboard *)self creationSequence];
  if (v5 >= [v4 creationSequence])
  {
    v7 = [(GCKeyboard *)self creationSequence];
    v6 = v7 > [v4 creationSequence];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCKeyboard *)self vendorName];
  v5 = [v3 stringWithFormat:@"<GCKeyboard %p '%@'>", self, v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

@end