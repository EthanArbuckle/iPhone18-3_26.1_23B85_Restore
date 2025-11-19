@interface ARCoachingWrappedButton
- (void)sendAction:(SEL)a3 to:(id)a4 forEvent:(id)a5;
@end

@implementation ARCoachingWrappedButton

- (void)sendAction:(SEL)a3 to:(id)a4 forEvent:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(ARCoachingWrappedButton *)self wrapperButton];
  [v10 sendAction:a3 to:v9 forEvent:v8];
}

@end