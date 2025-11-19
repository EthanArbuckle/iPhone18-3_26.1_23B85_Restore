@interface UIResponder
+ (id)currentFirstResponder;
@end

@implementation UIResponder

+ (id)currentFirstResponder
{
  objc_storeWeak(&qword_1002D7150, 0);
  v2 = +[UIApplication sharedApplication];
  [v2 sendAction:"findFirstResponder:" to:0 from:0 forEvent:0];

  WeakRetained = objc_loadWeakRetained(&qword_1002D7150);

  return WeakRetained;
}

@end