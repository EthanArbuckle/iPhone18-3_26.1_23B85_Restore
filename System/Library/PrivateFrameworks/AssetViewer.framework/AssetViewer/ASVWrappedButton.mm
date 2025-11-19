@interface ASVWrappedButton
- (void)sendAction:(SEL)a3 to:(id)a4 forEvent:(id)a5;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation ASVWrappedButton

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = ASVWrappedButton;
  [(ASVWrappedButton *)&v6 setHighlighted:?];
  v5 = [(ASVWrappedButton *)self wrapperButton];
  [v5 setHighlighted:v3];
}

- (void)sendAction:(SEL)a3 to:(id)a4 forEvent:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(ASVWrappedButton *)self wrapperButton];
  [v10 sendAction:a3 to:v9 forEvent:v8];
}

@end