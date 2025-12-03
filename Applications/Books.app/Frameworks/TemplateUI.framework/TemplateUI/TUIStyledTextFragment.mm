@interface TUIStyledTextFragment
- (TUIStyledTextFragment)initWithStyle:(unint64_t)style attributes:(id)attributes fragments:(id)fragments;
- (void)appendToBuilder:(id)builder context:(id)context;
@end

@implementation TUIStyledTextFragment

- (TUIStyledTextFragment)initWithStyle:(unint64_t)style attributes:(id)attributes fragments:(id)fragments
{
  fragmentsCopy = fragments;
  v14.receiver = self;
  v14.super_class = TUIStyledTextFragment;
  v9 = [(TUIStyledTextFragment *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_attributes = attributes;
    v9->_style = style;
    v11 = [fragmentsCopy copy];
    fragments = v10->_fragments;
    v10->_fragments = v11;
  }

  return v10;
}

- (void)appendToBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  contextCopy = context;
  style = self->_style;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5DD40;
  v11[3] = &unk_25E7C0;
  v11[4] = self;
  v12 = builderCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = builderCopy;
  [v10 appendWithStyle:style color:0 fontSpec:0 block:v11];
}

@end