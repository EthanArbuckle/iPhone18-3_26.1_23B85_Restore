@interface AVMobileGlassAuxiliaryControl
+ (AVMobileGlassAuxiliaryControl)controlWithDisplayPriority:(int64_t)a3 identifier:(id)a4;
+ (AVMobileGlassAuxiliaryControl)controlWithView:(id)a3 displayPriority:(int64_t)a4 identifier:(id)a5;
+ (id)prominentControlWithView:(id)a3 displayPriority:(int64_t)a4 identifier:(id)a5;
- (AVMobileGlassAuxiliaryControlDelegate)delegate;
- (id)description;
- (void)_setupMaterialBackgroundIfNeeded:(uint64_t)a1;
- (void)setIncluded:(BOOL)a3;
@end

@implementation AVMobileGlassAuxiliaryControl

- (AVMobileGlassAuxiliaryControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AVMobileGlassAuxiliaryControl;
  v4 = [(AVMobileGlassAuxiliaryControl *)&v7 description];
  v5 = [v3 stringWithFormat:@"[%@ - %@]", v4, self->_identifier];

  return v5;
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    v5 = [(AVMobileGlassAuxiliaryControl *)self delegate];
    [v5 auxiliaryControlDidChangeState:self];
  }
}

+ (id)prominentControlWithView:(id)a3 displayPriority:(int64_t)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(AVMobileGlassAuxiliaryControl);
  v9->_style = 1;
  identifier = v9->_identifier;
  v9->_displayPriority = a4;
  v9->_identifier = v7;

  [(AVMobileGlassAuxiliaryControl *)v9 _setupMaterialBackgroundIfNeeded:v8];

  return v9;
}

- (void)_setupMaterialBackgroundIfNeeded:(uint64_t)a1
{
  v3 = a2;
  if (a1 && v3 && !*(a1 + 40))
  {
    v8 = v3;
    v4 = [AVMobileGlassAuxiliaryControlView alloc];
    [v8 bounds];
    v5 = [(AVGlassBackedView *)v4 initWithFrame:?];
    [(AVMobileGlassAuxiliaryControlView *)v5 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(AVMobileGlassAuxiliaryControlView *)v5 setAutoresizingMask:0];
    [(AVView *)v5 setIgnoresTouches:1];
    [(AVMobileGlassAuxiliaryControlView *)v5 setWrappedView:v8];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAutoresizingMask:0];
    v6 = [v8 layer];
    [v6 setCompositingFilter:0];

    [(AVMobileGlassAuxiliaryControlView *)v5 addSubview:v8];
    v7 = *(a1 + 40);
    *(a1 + 40) = v5;

    v3 = v8;
  }
}

+ (AVMobileGlassAuxiliaryControl)controlWithDisplayPriority:(int64_t)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(AVMobileGlassAuxiliaryControl);
  identifier = v6->_identifier;
  v6->_displayPriority = a3;
  v6->_identifier = v5;

  v6->_style = 0;

  return v6;
}

+ (AVMobileGlassAuxiliaryControl)controlWithView:(id)a3 displayPriority:(int64_t)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(AVMobileGlassAuxiliaryControl);
  identifier = v9->_identifier;
  v9->_displayPriority = a4;
  v9->_identifier = v7;

  v9->_style = 0;
  [(AVMobileGlassAuxiliaryControl *)v9 _setupMaterialBackgroundIfNeeded:v8];

  return v9;
}

@end