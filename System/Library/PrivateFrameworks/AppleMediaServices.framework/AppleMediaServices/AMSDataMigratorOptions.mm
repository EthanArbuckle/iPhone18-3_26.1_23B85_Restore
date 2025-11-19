@interface AMSDataMigratorOptions
+ (id)_stringFromOptionsArray:(id)a3 atIndex:(unint64_t)a4;
- (AMSDataMigratorOptions)initWithOptionsArray:(id)a3;
- (NSArray)optionsArray;
@end

@implementation AMSDataMigratorOptions

- (AMSDataMigratorOptions)initWithOptionsArray:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSDataMigratorOptions;
  v5 = [(AMSDataMigratorOptions *)&v12 init];
  if (v5)
  {
    v6 = [AMSDataMigratorOptions _stringFromOptionsArray:v4 atIndex:0];
    currentBuildVersion = v5->_currentBuildVersion;
    v5->_currentBuildVersion = v6;

    v8 = [AMSDataMigratorOptions _stringFromOptionsArray:v4 atIndex:1];
    previousBuildVersion = v5->_previousBuildVersion;
    v5->_previousBuildVersion = v8;

    v10 = [AMSDataMigratorOptions _stringFromOptionsArray:v4 atIndex:2];
    v5->_scenario = [v10 integerValue];
  }

  return v5;
}

- (NSArray)optionsArray
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [(AMSDataMigratorOptions *)self currentBuildVersion];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F071BA78;
  }

  v6 = [(AMSDataMigratorOptions *)self previousBuildVersion];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F071BA78;
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSDataMigratorOptions scenario](self, "scenario")}];
  v10 = [v9 stringValue];
  v13[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  return v11;
}

+ (id)_stringFromOptionsArray:(id)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count] <= a4)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

@end