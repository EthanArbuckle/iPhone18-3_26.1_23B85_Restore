@interface TUIHyperlinkTextFragment
- (TUIHyperlinkTextFragment)initWithURL:(id)l fragments:(id)fragments;
- (void)appendToBuilder:(id)builder context:(id)context;
@end

@implementation TUIHyperlinkTextFragment

- (TUIHyperlinkTextFragment)initWithURL:(id)l fragments:(id)fragments
{
  lCopy = l;
  fragmentsCopy = fragments;
  v14.receiver = self;
  v14.super_class = TUIHyperlinkTextFragment;
  v8 = [(TUIHyperlinkTextFragment *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    url = v8->_url;
    v8->_url = v9;

    v11 = [fragmentsCopy copy];
    fragments = v8->_fragments;
    v8->_fragments = v11;
  }

  return v8;
}

- (void)appendToBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  contextCopy = context;
  url = self->_url;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5DFCC;
  v11[3] = &unk_25E7C0;
  v11[4] = self;
  v12 = builderCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = builderCopy;
  [v10 appendHyperlinkWithURL:url block:v11];
}

@end