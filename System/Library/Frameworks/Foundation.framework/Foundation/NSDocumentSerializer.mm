@interface NSDocumentSerializer
- (unint64_t)serializePListValueIn:(id)in key:(id)key value:(id)value;
@end

@implementation NSDocumentSerializer

- (unint64_t)serializePListValueIn:(id)in key:(id)key value:(id)value
{
  v12 = *MEMORY[0x1E69E9840];
  if ([key isEqual:@"."])
  {
    serializeToData = [value serializeToData];

    return [(NSAKSerializer *)self serializeObject:serializeToData];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = NSDocumentSerializer;
    return [(NSAKSerializer *)&v11 serializePListValueIn:in key:key value:value];
  }
}

@end