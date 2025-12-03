@interface AMSResource
+ (id)loadHARFileWithName:(id)name bundle:(id)bundle;
+ (id)loadHARFileWithName:(id)name bundle:(id)bundle inDirectory:(id)directory;
+ (id)loadPropertyListWithName:(id)name bundle:(id)bundle error:(id *)error;
@end

@implementation AMSResource

+ (id)loadHARFileWithName:(id)name bundle:(id)bundle
{
  v4 = [bundle pathForResource:name ofType:@"har"];
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:0];
    objc_opt_class();
    v7 = 0;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)loadHARFileWithName:(id)name bundle:(id)bundle inDirectory:(id)directory
{
  v5 = [bundle pathForResource:name ofType:@"har" inDirectory:directory];
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5];
  if (v6)
  {
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
    objc_opt_class();
    v8 = 0;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)loadPropertyListWithName:(id)name bundle:(id)bundle error:(id *)error
{
  v6 = [bundle pathForResource:name ofType:@"plist"];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6 options:0 error:error];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:error];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;

          v12 = v11;
        }

        else
        {

          if (error)
          {
            AMSError(2, @"Invalid Property List", @"Expected the property list to be a dictionary", 0);
            *error = v12 = 0;
          }

          else
          {
            v12 = 0;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else if (error)
  {
    AMSError(7, @"File not found", @"Could not find the file.", 0);
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end