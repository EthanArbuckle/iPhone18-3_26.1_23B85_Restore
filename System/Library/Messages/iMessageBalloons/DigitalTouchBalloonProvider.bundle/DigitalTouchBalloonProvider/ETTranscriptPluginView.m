@interface ETTranscriptPluginView
- (ETTranscriptPluginView)init;
- (void)trackInteractiveSubview:(id)a3;
@end

@implementation ETTranscriptPluginView

- (ETTranscriptPluginView)init
{
  v6.receiver = self;
  v6.super_class = ETTranscriptPluginView;
  v2 = [(ETTranscriptPluginView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(ETTranscriptPluginView *)v2 setUserInteractionEnabled:0];
    [(ETTranscriptPluginView *)v3 setAccessibilityIgnoresInvertColors:1];
    v4 = v3;
  }

  return v3;
}

- (void)trackInteractiveSubview:(id)a3
{
  v4 = a3;
  interactiveViews = self->_interactiveViews;
  v8 = v4;
  if (!interactiveViews)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_interactiveViews;
    self->_interactiveViews = v6;

    v4 = v8;
    interactiveViews = self->_interactiveViews;
  }

  [(NSMutableArray *)interactiveViews addObject:v4];
}

@end