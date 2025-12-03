@interface NSUnitInformationStorage
+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system;
+ (void)initialize;
@end

@implementation NSUnitInformationStorage

+ (void)initialize
{
  if (NSUnitInformationStorage == self)
  {
    objc_opt_class();
  }
}

+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system
{
  if (qword_1EA7C0200 != -1)
  {
    dispatch_once(&qword_1EA7C0200, &__block_literal_global_1111);
  }

  v5 = [scale measurementByConvertingToUnit:{+[NSUnitInformationStorage bytes](NSUnitInformationStorage, "bytes")}];
  converter = [(NSDimension *)+[NSUnitInformationStorage bytes](NSUnitInformationStorage converter];
  [v5 doubleValue];
  v8 = v7;
  [(NSUnitConverter *)converter coefficient];
  if (scale && v8 < v9)
  {
    return scale;
  }

  unit = [scale unit];
  v12 = [qword_1EA7C01F8 containsObject:unit];
  if (v12)
  {
    v13 = 1024;
  }

  else
  {
    v13 = 1000;
  }

  return __NSMeasurementConvertedForFileSizeDescription(scale, 0xFFFF, v12 ^ 1u, v13, 0);
}

uint64_t __64__NSUnitInformationStorage__measurementWithNaturalScale_system___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{+[NSUnitInformationStorage yobibytes](NSUnitInformationStorage, "yobibytes"), +[NSUnitInformationStorage yobibits](NSUnitInformationStorage, "yobibits"), +[NSUnitInformationStorage zebibytes](NSUnitInformationStorage, "zebibytes"), +[NSUnitInformationStorage zebibits](NSUnitInformationStorage, "zebibits"), +[NSUnitInformationStorage exbibytes](NSUnitInformationStorage, "exbibytes"), +[NSUnitInformationStorage exbibits](NSUnitInformationStorage, "exbibits"), +[NSUnitInformationStorage pebibytes](NSUnitInformationStorage, "pebibytes"), +[NSUnitInformationStorage pebibits](NSUnitInformationStorage, "pebibits"), +[NSUnitInformationStorage tebibytes](NSUnitInformationStorage, "tebibytes"), +[NSUnitInformationStorage tebibits](NSUnitInformationStorage, "tebibits"), +[NSUnitInformationStorage gibibytes](NSUnitInformationStorage, "gibibytes"), +[NSUnitInformationStorage gibibits](NSUnitInformationStorage, "gibibits"), +[NSUnitInformationStorage mebibytes](NSUnitInformationStorage, "mebibytes"), +[NSUnitInformationStorage mebibits](NSUnitInformationStorage, "mebibits"), +[NSUnitInformationStorage kibibytes](NSUnitInformationStorage, "kibibytes"), +[NSUnitInformationStorage kibibits](NSUnitInformationStorage, "kibibits"), 0}];
  qword_1EA7C01F8 = result;
  return result;
}

@end