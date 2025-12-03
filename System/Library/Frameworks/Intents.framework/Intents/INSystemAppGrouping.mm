@interface INSystemAppGrouping
+ (id)groupingForKey:(id)key iOS:(id)s macOS:(id)oS watchOS:(id)watchOS;
+ (id)groupingForKey:(id)key iOS:(id)s macOS:(id)oS watchOS:(id)watchOS tvOS:(id)tvOS;
@end

@implementation INSystemAppGrouping

+ (id)groupingForKey:(id)key iOS:(id)s macOS:(id)oS watchOS:(id)watchOS
{
  v6 = [self groupingForKey:key iOS:s macOS:oS watchOS:watchOS tvOS:0];

  return v6;
}

+ (id)groupingForKey:(id)key iOS:(id)s macOS:(id)oS watchOS:(id)watchOS tvOS:(id)tvOS
{
  keyCopy = key;
  sCopy = s;
  oSCopy = oS;
  watchOSCopy = watchOS;
  tvOSCopy = tvOS;
  v16 = objc_alloc_init(INSystemAppGrouping);
  [(INSystemAppGrouping *)v16 setKey:keyCopy];
  [(INSystemAppGrouping *)v16 setIOS:sCopy];
  [(INSystemAppGrouping *)v16 setMacOS:oSCopy];
  [(INSystemAppGrouping *)v16 setWatchOS:watchOSCopy];
  [(INSystemAppGrouping *)v16 setTvOS:tvOSCopy];

  return v16;
}

@end