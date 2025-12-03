@interface ATXJSONHelper
+ (id)unwrapData:(id)data;
+ (id)unwrapObject:(id)object;
+ (id)wrapObject:(id)object;
@end

@implementation ATXJSONHelper

+ (id)wrapObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      null = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:objectCopy encoding:1];
    }

    else
    {
      null = objectCopy;
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;

  return v5;
}

+ (id)unwrapObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = objectCopy;
  }

  return v4;
}

+ (id)unwrapData:(id)data
{
  dataCopy = data;
  v4 = [ATXJSONHelper unwrapObject:dataCopy];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [dataCopy dataUsingEncoding:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end