@interface NSObject(Intents)
- (SEL)_intents_setterForPropertyWithName:()Intents;
- (id)_intents_indexingRepresentation;
- (id)descriptionAtIndent:()Intents;
@end

@implementation NSObject(Intents)

- (id)_intents_indexingRepresentation
{
  v2 = NSSelectorFromString(@"_dictionaryRepresentation");
  if (objc_opt_respondsToSelector())
  {
    v3 = ([self methodForSelector:v2])(self, v2);
    selfCopy = [v3 _intents_indexingRepresentation];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (SEL)_intents_setterForPropertyWithName:()Intents
{
  v4 = a3;
  v5 = [a3 cStringUsingEncoding:1];
  v6 = objc_opt_class();
  Property = class_getProperty(v6, v5);
  v8 = property_copyAttributeValue(Property, "S");
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:1];
    free(v9);
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", __toupper(*v5)];
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v5 + 1 encoding:1];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"set%@%@:", v11, v12];
  }

  v13 = NSSelectorFromString(v10);
  if (objc_opt_respondsToSelector())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)descriptionAtIndent:()Intents
{
  for (i = [MEMORY[0x1E696AD60] stringWithString:@"\n"];
  {
    [i appendString:@"    "];
  }

  v6 = [self description];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:i];

  return v7;
}

@end