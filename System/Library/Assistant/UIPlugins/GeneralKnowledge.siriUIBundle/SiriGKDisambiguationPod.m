@interface SiriGKDisambiguationPod
- (SiriGKDisambiguationPod)initWithDisambiguationPod:(id)a3;
- (id)subtitle;
- (id)title;
@end

@implementation SiriGKDisambiguationPod

- (SiriGKDisambiguationPod)initWithDisambiguationPod:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SiriGKDisambiguationPod;
  v5 = [(SiriGKDisambiguationPod *)&v11 init];
  if (v5)
  {
    v6 = [v4 title];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 text];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;
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