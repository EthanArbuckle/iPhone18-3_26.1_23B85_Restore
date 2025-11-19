@interface AMSResource
+ (id)loadHARFileWithName:(id)a3 bundle:(id)a4;
+ (id)loadHARFileWithName:(id)a3 bundle:(id)a4 inDirectory:(id)a5;
+ (id)loadPropertyListWithName:(id)a3 bundle:(id)a4 error:(id *)a5;
@end

@implementation AMSResource

+ (id)loadHARFileWithName:(id)a3 bundle:(id)a4
{
  v4 = [a4 pathForResource:a3 ofType:@"har"];
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

+ (id)loadHARFileWithName:(id)a3 bundle:(id)a4 inDirectory:(id)a5
{
  v5 = [a4 pathForResource:a3 ofType:@"har" inDirectory:a5];
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

+ (id)loadPropertyListWithName:(id)a3 bundle:(id)a4 error:(id *)a5
{
  v6 = [a4 pathForResource:a3 ofType:@"plist"];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6 options:0 error:a5];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:a5];
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

          if (a5)
          {
            AMSError(2, @"Invalid Property List", @"Expected the property list to be a dictionary", 0);
            *a5 = v12 = 0;
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

  else if (a5)
  {
    AMSError(7, @"File not found", @"Could not find the file.", 0);
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end