@interface _UTRuntimeConstantType
+ (id)typeWithIdentifier:(id)identifier bundle:(id)bundle infoPlistKey:(__CFString *)key;
- (void)dealloc;
@end

@implementation _UTRuntimeConstantType

- (void)dealloc
{
  identifier = self->super._fields.identifier;
  if (identifier)
  {
    CFRelease(identifier);
  }

  v4.receiver = self;
  v4.super_class = _UTRuntimeConstantType;
  [(_UTRuntimeConstantType *)&v4 dealloc];
}

+ (id)typeWithIdentifier:(id)identifier bundle:(id)bundle infoPlistKey:(__CFString *)key
{
  if (!identifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTCoreTypes.mm" lineNumber:685 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  Instance = class_createInstance(self, 0);
  if (!Instance)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UTCoreTypes.mm" lineNumber:688 description:{@"Failed to allocate instance of %@.", self}];
  }

  Instance[2] = [identifier copy];

  return Instance;
}

@end