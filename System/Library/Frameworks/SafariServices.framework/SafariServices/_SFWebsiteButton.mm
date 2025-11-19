@interface _SFWebsiteButton
- (_SFWebsiteButton)init;
- (void)_activate:(id)a3;
@end

@implementation _SFWebsiteButton

- (_SFWebsiteButton)init
{
  v7.receiver = self;
  v7.super_class = _SFWebsiteButton;
  v2 = [(_SFWebsiteButton *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(_SFWebsiteButton *)v2 setTintColor:v3];

    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];
    [(_SFWebsiteButton *)v2 setImage:v4 forState:0];

    [(_SFWebsiteButton *)v2 addTarget:v2 action:sel__activate_ forControlEvents:64];
    [(_SFWebsiteButton *)v2 sizeToFit];
    v5 = v2;
  }

  return v2;
}

- (void)_activate:(id)a3
{
  v6 = a3;
  v4 = [(_SFWebsiteButton *)self activationHandler];

  if (v4)
  {
    v5 = [(_SFWebsiteButton *)self activationHandler];
    (v5)[2](v5, v6);
  }
}

@end