@interface ASCredentialRequestButton
- (void)addTarget:(id)a3 action:(SEL)a4;
@end

@implementation ASCredentialRequestButton

- (void)addTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  [(ASCredentialRequestButton *)self removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  [(ASCredentialRequestButton *)self addTarget:v6 action:a4 forControlEvents:64];
}

@end