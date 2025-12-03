@interface GCKeyboard
+ (GCKeyboard)coalescedKeyboard;
- (GCKeyboard)init;
- (NSString)debugDescription;
- (NSString)description;
- (int64_t)compareTo:(id)to;
@end

@implementation GCKeyboard

+ (GCKeyboard)coalescedKeyboard
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  keyboards = [v2 keyboards];
  underlyingCollection = [(GCDeviceCollection *)keyboards underlyingCollection];
  anyObject = [underlyingCollection anyObject];

  return anyObject;
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

- (int64_t)compareTo:(id)to
{
  toCopy = to;
  creationSequence = [(GCKeyboard *)self creationSequence];
  if (creationSequence >= [toCopy creationSequence])
  {
    creationSequence2 = [(GCKeyboard *)self creationSequence];
    v6 = creationSequence2 > [toCopy creationSequence];
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
  vendorName = [(GCKeyboard *)self vendorName];
  v5 = [v3 stringWithFormat:@"<GCKeyboard %p '%@'>", self, vendorName];

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