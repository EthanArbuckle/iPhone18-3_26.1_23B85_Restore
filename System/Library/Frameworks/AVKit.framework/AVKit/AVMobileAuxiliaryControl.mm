@interface AVMobileAuxiliaryControl
+ (id)controlWithDisplayPriority:(int64_t)a3 identifier:(id)a4;
+ (id)controlWithView:(id)a3 displayPriority:(int64_t)a4 identifier:(id)a5;
+ (id)prominentControlWithView:(id)a3 displayPriority:(int64_t)a4 identifier:(id)a5;
- (AVMobileAuxiliaryControlDelegate)delegate;
- (id)description;
- (void)setIncluded:(BOOL)a3;
@end

@implementation AVMobileAuxiliaryControl

- (AVMobileAuxiliaryControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AVMobileAuxiliaryControl;
  v4 = [(AVMobileAuxiliaryControl *)&v7 description];
  v5 = [v3 stringWithFormat:@"[%@ - %@]", v4, self->_identifier];

  return v5;
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    v5 = [(AVMobileAuxiliaryControl *)self delegate];
    [v5 auxiliaryControlDidChangeState:self];
  }
}

+ (id)prominentControlWithView:(id)a3 displayPriority:(int64_t)a4 identifier:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:1];
  [(UIView *)v7 setAutoresizingMask:0];
  v9 = objc_alloc_init(AVMobileAuxiliaryControl);
  controlView = v9->_controlView;
  v9->_controlView = v7;
  v11 = v7;

  v9->_style = 1;
  identifier = v9->_identifier;
  v9->_displayPriority = a4;
  v9->_identifier = v8;

  return v9;
}

+ (id)controlWithDisplayPriority:(int64_t)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(AVMobileAuxiliaryControl);
  identifier = v6->_identifier;
  v6->_displayPriority = a3;
  v6->_identifier = v5;

  v6->_style = 0;

  return v6;
}

+ (id)controlWithView:(id)a3 displayPriority:(int64_t)a4 identifier:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:1];
  [(UIView *)v7 setAutoresizingMask:0];
  v9 = objc_alloc_init(AVMobileAuxiliaryControl);
  controlView = v9->_controlView;
  v9->_controlView = v7;
  v11 = v7;

  identifier = v9->_identifier;
  v9->_displayPriority = a4;
  v9->_identifier = v8;

  v9->_style = 0;

  return v9;
}

@end