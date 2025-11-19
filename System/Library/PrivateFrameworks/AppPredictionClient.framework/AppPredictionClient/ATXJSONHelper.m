@interface ATXJSONHelper
+ (id)unwrapData:(id)a3;
+ (id)unwrapObject:(id)a3;
+ (id)wrapObject:(id)a3;
@end

@implementation ATXJSONHelper

+ (id)wrapObject:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:1];
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;

  return v5;
}

+ (id)unwrapObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)unwrapData:(id)a3
{
  v3 = a3;
  v4 = [ATXJSONHelper unwrapObject:v3];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v3 dataUsingEncoding:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end