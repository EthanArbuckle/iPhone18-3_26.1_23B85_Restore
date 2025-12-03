@interface SiriGKSourceLinkPod
- (SiriGKSourceLinkPod)initWithSourceLinkPod:(id)pod;
@end

@implementation SiriGKSourceLinkPod

- (SiriGKSourceLinkPod)initWithSourceLinkPod:(id)pod
{
  podCopy = pod;
  v12.receiver = self;
  v12.super_class = SiriGKSourceLinkPod;
  v5 = [(SiriGKSourceLinkPod *)&v12 init];
  if (v5)
  {
    v6 = [SiriGKSourceLinkView alloc];
    linkText = [podCopy linkText];
    punchOut = [podCopy punchOut];
    v9 = [(SiriGKSourceLinkView *)v6 initWithLinkText:linkText punchOut:punchOut];
    sourceLinkView = v5->_sourceLinkView;
    v5->_sourceLinkView = v9;
  }

  return v5;
}

@end