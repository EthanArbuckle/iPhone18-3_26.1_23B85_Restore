@interface _NSUnarchiveFromDataTransformer
- (_NSUnarchiveFromDataTransformer)init;
- (id)transformedValue:(id)value;
@end

@implementation _NSUnarchiveFromDataTransformer

- (_NSUnarchiveFromDataTransformer)init
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [NSValueTransformer _warnAboutInscureArchiverCitingOffender:v4];
  v6.receiver = self;
  v6.super_class = _NSUnarchiveFromDataTransformer;
  return [(NSValueTransformer *)&v6 init];
}

- (id)transformedValue:(id)value
{
  if (value)
  {
    return [NSUnarchiver unarchiveObjectWithData:?];
  }

  else
  {
    return 0;
  }
}

@end