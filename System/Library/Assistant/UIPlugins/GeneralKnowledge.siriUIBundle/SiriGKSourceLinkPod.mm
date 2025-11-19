@interface SiriGKSourceLinkPod
- (SiriGKSourceLinkPod)initWithSourceLinkPod:(id)a3;
@end

@implementation SiriGKSourceLinkPod

- (SiriGKSourceLinkPod)initWithSourceLinkPod:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SiriGKSourceLinkPod;
  v5 = [(SiriGKSourceLinkPod *)&v12 init];
  if (v5)
  {
    v6 = [SiriGKSourceLinkView alloc];
    v7 = [v4 linkText];
    v8 = [v4 punchOut];
    v9 = [(SiriGKSourceLinkView *)v6 initWithLinkText:v7 punchOut:v8];
    sourceLinkView = v5->_sourceLinkView;
    v5->_sourceLinkView = v9;
  }

  return v5;
}

@end