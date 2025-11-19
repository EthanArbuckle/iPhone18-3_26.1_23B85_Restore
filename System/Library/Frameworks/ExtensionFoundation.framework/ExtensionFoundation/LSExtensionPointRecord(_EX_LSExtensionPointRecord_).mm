@interface LSExtensionPointRecord(_EX_LSExtensionPointRecord_)
- (id)_EX_initWithIdentifier:()_EX_LSExtensionPointRecord_ platform:parentAppRecord:error:;
- (id)_EX_parentAppRecord;
@end

@implementation LSExtensionPointRecord(_EX_LSExtensionPointRecord_)

- (id)_EX_parentAppRecord
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 parentAppRecord];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_EX_initWithIdentifier:()_EX_LSExtensionPointRecord_ platform:parentAppRecord:error:
{
  v10 = a5;
  v11 = a3;
  v12 = objc_opt_respondsToSelector();
  v13 = a1;
  if (v12)
  {
    v14 = [v13 initWithIdentifier:v11 platform:a4 parentAppRecord:v10 error:a6];
  }

  else
  {
    v14 = [v13 initWithIdentifier:v11 platform:a4 error:a6];
  }

  v15 = v14;

  return v15;
}

@end