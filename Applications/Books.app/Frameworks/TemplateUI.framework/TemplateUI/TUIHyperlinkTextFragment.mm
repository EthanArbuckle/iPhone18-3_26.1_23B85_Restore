@interface TUIHyperlinkTextFragment
- (TUIHyperlinkTextFragment)initWithURL:(id)a3 fragments:(id)a4;
- (void)appendToBuilder:(id)a3 context:(id)a4;
@end

@implementation TUIHyperlinkTextFragment

- (TUIHyperlinkTextFragment)initWithURL:(id)a3 fragments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TUIHyperlinkTextFragment;
  v8 = [(TUIHyperlinkTextFragment *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    url = v8->_url;
    v8->_url = v9;

    v11 = [v7 copy];
    fragments = v8->_fragments;
    v8->_fragments = v11;
  }

  return v8;
}

- (void)appendToBuilder:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  url = self->_url;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5DFCC;
  v11[3] = &unk_25E7C0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v10 appendHyperlinkWithURL:url block:v11];
}

@end