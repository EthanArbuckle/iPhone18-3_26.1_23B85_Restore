@interface AVMobileGlassAuxiliaryControl
+ (AVMobileGlassAuxiliaryControl)controlWithDisplayPriority:(int64_t)priority identifier:(id)identifier;
+ (AVMobileGlassAuxiliaryControl)controlWithView:(id)view displayPriority:(int64_t)priority identifier:(id)identifier;
+ (id)prominentControlWithView:(id)view displayPriority:(int64_t)priority identifier:(id)identifier;
- (AVMobileGlassAuxiliaryControlDelegate)delegate;
- (id)description;
- (void)_setupMaterialBackgroundIfNeeded:(uint64_t)needed;
- (void)setIncluded:(BOOL)included;
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

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
    delegate = [(AVMobileGlassAuxiliaryControl *)self delegate];
    [delegate auxiliaryControlDidChangeState:self];
  }
}

+ (id)prominentControlWithView:(id)view displayPriority:(int64_t)priority identifier:(id)identifier
{
  identifierCopy = identifier;
  viewCopy = view;
  v9 = objc_alloc_init(AVMobileGlassAuxiliaryControl);
  v9->_style = 1;
  identifier = v9->_identifier;
  v9->_displayPriority = priority;
  v9->_identifier = identifierCopy;

  [(AVMobileGlassAuxiliaryControl *)v9 _setupMaterialBackgroundIfNeeded:viewCopy];

  return v9;
}

- (void)_setupMaterialBackgroundIfNeeded:(uint64_t)needed
{
  v3 = a2;
  if (needed && v3 && !*(needed + 40))
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
    layer = [v8 layer];
    [layer setCompositingFilter:0];

    [(AVMobileGlassAuxiliaryControlView *)v5 addSubview:v8];
    v7 = *(needed + 40);
    *(needed + 40) = v5;

    v3 = v8;
  }
}

+ (AVMobileGlassAuxiliaryControl)controlWithDisplayPriority:(int64_t)priority identifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(AVMobileGlassAuxiliaryControl);
  identifier = v6->_identifier;
  v6->_displayPriority = priority;
  v6->_identifier = identifierCopy;

  v6->_style = 0;

  return v6;
}

+ (AVMobileGlassAuxiliaryControl)controlWithView:(id)view displayPriority:(int64_t)priority identifier:(id)identifier
{
  identifierCopy = identifier;
  viewCopy = view;
  v9 = objc_alloc_init(AVMobileGlassAuxiliaryControl);
  identifier = v9->_identifier;
  v9->_displayPriority = priority;
  v9->_identifier = identifierCopy;

  v9->_style = 0;
  [(AVMobileGlassAuxiliaryControl *)v9 _setupMaterialBackgroundIfNeeded:viewCopy];

  return v9;
}

@end