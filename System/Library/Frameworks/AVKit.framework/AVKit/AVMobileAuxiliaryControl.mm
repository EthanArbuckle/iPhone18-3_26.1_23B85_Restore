@interface AVMobileAuxiliaryControl
+ (id)controlWithDisplayPriority:(int64_t)priority identifier:(id)identifier;
+ (id)controlWithView:(id)view displayPriority:(int64_t)priority identifier:(id)identifier;
+ (id)prominentControlWithView:(id)view displayPriority:(int64_t)priority identifier:(id)identifier;
- (AVMobileAuxiliaryControlDelegate)delegate;
- (id)description;
- (void)setIncluded:(BOOL)included;
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

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
    delegate = [(AVMobileAuxiliaryControl *)self delegate];
    [delegate auxiliaryControlDidChangeState:self];
  }
}

+ (id)prominentControlWithView:(id)view displayPriority:(int64_t)priority identifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  [(UIView *)viewCopy setTranslatesAutoresizingMaskIntoConstraints:1];
  [(UIView *)viewCopy setAutoresizingMask:0];
  v9 = objc_alloc_init(AVMobileAuxiliaryControl);
  controlView = v9->_controlView;
  v9->_controlView = viewCopy;
  v11 = viewCopy;

  v9->_style = 1;
  identifier = v9->_identifier;
  v9->_displayPriority = priority;
  v9->_identifier = identifierCopy;

  return v9;
}

+ (id)controlWithDisplayPriority:(int64_t)priority identifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(AVMobileAuxiliaryControl);
  identifier = v6->_identifier;
  v6->_displayPriority = priority;
  v6->_identifier = identifierCopy;

  v6->_style = 0;

  return v6;
}

+ (id)controlWithView:(id)view displayPriority:(int64_t)priority identifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  [(UIView *)viewCopy setTranslatesAutoresizingMaskIntoConstraints:1];
  [(UIView *)viewCopy setAutoresizingMask:0];
  v9 = objc_alloc_init(AVMobileAuxiliaryControl);
  controlView = v9->_controlView;
  v9->_controlView = viewCopy;
  v11 = viewCopy;

  identifier = v9->_identifier;
  v9->_displayPriority = priority;
  v9->_identifier = identifierCopy;

  v9->_style = 0;

  return v9;
}

@end