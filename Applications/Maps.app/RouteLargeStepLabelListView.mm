@interface RouteLargeStepLabelListView
+ (id)fontsForStrings:(id)a3 route:(id)a4 step:(id)a5 tableMode:(BOOL)a6;
@end

@implementation RouteLargeStepLabelListView

+ (id)fontsForStrings:(id)a3 route:(id)a4 step:(id)a5 tableMode:(BOOL)a6
{
  v6 = [a3 count];
  v7 = [NSMutableArray arrayWithCapacity:v6];
  v8 = [UIFont _maps_boldSystemFontWithSize:35.0];
  [v7 addObject:v8];

  v9 = 2;
  if (v6 > 2)
  {
    v9 = v6;
  }

  v10 = v9 - 1;
  do
  {
    v11 = [UIFont _maps_systemFontWithSize:20.0];
    [v7 addObject:v11];

    --v10;
  }

  while (v10);

  return v7;
}

@end