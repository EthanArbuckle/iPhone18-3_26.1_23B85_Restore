@interface _HKCFGTerminalNode
+ (id)nodeWithValue:(id)a3 rangeOfString:(_NSRange)a4;
@end

@implementation _HKCFGTerminalNode

+ (id)nodeWithValue:(id)a3 rangeOfString:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [[a1 alloc] initWithRangeOfString:{location, length}];
  v9 = v8[3];
  v8[3] = v7;

  return v8;
}

@end