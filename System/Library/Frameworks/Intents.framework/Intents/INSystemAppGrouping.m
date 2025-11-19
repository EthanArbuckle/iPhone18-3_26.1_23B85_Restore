@interface INSystemAppGrouping
+ (id)groupingForKey:(id)a3 iOS:(id)a4 macOS:(id)a5 watchOS:(id)a6;
+ (id)groupingForKey:(id)a3 iOS:(id)a4 macOS:(id)a5 watchOS:(id)a6 tvOS:(id)a7;
@end

@implementation INSystemAppGrouping

+ (id)groupingForKey:(id)a3 iOS:(id)a4 macOS:(id)a5 watchOS:(id)a6
{
  v6 = [a1 groupingForKey:a3 iOS:a4 macOS:a5 watchOS:a6 tvOS:0];

  return v6;
}

+ (id)groupingForKey:(id)a3 iOS:(id)a4 macOS:(id)a5 watchOS:(id)a6 tvOS:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(INSystemAppGrouping);
  [(INSystemAppGrouping *)v16 setKey:v11];
  [(INSystemAppGrouping *)v16 setIOS:v12];
  [(INSystemAppGrouping *)v16 setMacOS:v13];
  [(INSystemAppGrouping *)v16 setWatchOS:v14];
  [(INSystemAppGrouping *)v16 setTvOS:v15];

  return v16;
}

@end