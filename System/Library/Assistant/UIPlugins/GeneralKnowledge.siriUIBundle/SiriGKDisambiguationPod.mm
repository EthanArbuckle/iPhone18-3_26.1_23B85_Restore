@interface SiriGKDisambiguationPod
- (SiriGKDisambiguationPod)initWithDisambiguationPod:(id)pod;
- (id)subtitle;
- (id)title;
@end

@implementation SiriGKDisambiguationPod

- (SiriGKDisambiguationPod)initWithDisambiguationPod:(id)pod
{
  podCopy = pod;
  v11.receiver = self;
  v11.super_class = SiriGKDisambiguationPod;
  v5 = [(SiriGKDisambiguationPod *)&v11 init];
  if (v5)
  {
    title = [podCopy title];
    title = v5->_title;
    v5->_title = title;

    text = [podCopy text];
    subtitle = v5->_subtitle;
    v5->_subtitle = text;
  }

  return v5;
}

- (id)title
{
  v2 = [(NSString *)self->_title copy];

  return v2;
}

- (id)subtitle
{
  v2 = [(NSString *)self->_subtitle copy];

  return v2;
}

@end