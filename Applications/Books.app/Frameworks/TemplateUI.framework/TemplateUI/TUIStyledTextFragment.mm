@interface TUIStyledTextFragment
- (TUIStyledTextFragment)initWithStyle:(unint64_t)a3 attributes:(id)a4 fragments:(id)a5;
- (void)appendToBuilder:(id)a3 context:(id)a4;
@end

@implementation TUIStyledTextFragment

- (TUIStyledTextFragment)initWithStyle:(unint64_t)a3 attributes:(id)a4 fragments:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = TUIStyledTextFragment;
  v9 = [(TUIStyledTextFragment *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_attributes = a4;
    v9->_style = a3;
    v11 = [v8 copy];
    fragments = v10->_fragments;
    v10->_fragments = v11;
  }

  return v10;
}

- (void)appendToBuilder:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  style = self->_style;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5DD40;
  v11[3] = &unk_25E7C0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v10 appendWithStyle:style color:0 fontSpec:0 block:v11];
}

@end