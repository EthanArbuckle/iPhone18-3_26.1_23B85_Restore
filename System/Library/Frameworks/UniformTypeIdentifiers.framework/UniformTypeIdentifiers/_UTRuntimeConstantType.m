@interface _UTRuntimeConstantType
+ (id)typeWithIdentifier:(id)a3 bundle:(id)a4 infoPlistKey:(__CFString *)a5;
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

+ (id)typeWithIdentifier:(id)a3 bundle:(id)a4 infoPlistKey:(__CFString *)a5
{
  if (!a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"UTCoreTypes.mm" lineNumber:685 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  Instance = class_createInstance(a1, 0);
  if (!Instance)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"UTCoreTypes.mm" lineNumber:688 description:{@"Failed to allocate instance of %@.", a1}];
  }

  Instance[2] = [a3 copy];

  return Instance;
}

@end