@interface _HKCFGTerminalNode
+ (id)nodeWithValue:(id)value rangeOfString:(_NSRange)string;
@end

@implementation _HKCFGTerminalNode

+ (id)nodeWithValue:(id)value rangeOfString:(_NSRange)string
{
  length = string.length;
  location = string.location;
  valueCopy = value;
  v8 = [[self alloc] initWithRangeOfString:{location, length}];
  v9 = v8[3];
  v8[3] = valueCopy;

  return v8;
}

@end