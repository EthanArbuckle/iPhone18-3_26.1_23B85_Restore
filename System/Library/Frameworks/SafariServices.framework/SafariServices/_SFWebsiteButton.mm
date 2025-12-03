@interface _SFWebsiteButton
- (_SFWebsiteButton)init;
- (void)_activate:(id)_activate;
@end

@implementation _SFWebsiteButton

- (_SFWebsiteButton)init
{
  v7.receiver = self;
  v7.super_class = _SFWebsiteButton;
  v2 = [(_SFWebsiteButton *)&v7 init];
  if (v2)
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(_SFWebsiteButton *)v2 setTintColor:systemGrayColor];

    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];
    [(_SFWebsiteButton *)v2 setImage:v4 forState:0];

    [(_SFWebsiteButton *)v2 addTarget:v2 action:sel__activate_ forControlEvents:64];
    [(_SFWebsiteButton *)v2 sizeToFit];
    v5 = v2;
  }

  return v2;
}

- (void)_activate:(id)_activate
{
  _activateCopy = _activate;
  activationHandler = [(_SFWebsiteButton *)self activationHandler];

  if (activationHandler)
  {
    activationHandler2 = [(_SFWebsiteButton *)self activationHandler];
    (activationHandler2)[2](activationHandler2, _activateCopy);
  }
}

@end