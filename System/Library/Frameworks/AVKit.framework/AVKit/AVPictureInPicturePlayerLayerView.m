@interface AVPictureInPicturePlayerLayerView
- (void)attachPlayerLayer;
- (void)detachPlayerLayer;
@end

@implementation AVPictureInPicturePlayerLayerView

- (void)detachPlayerLayer
{
  if (self->_simplePlayerLayerView)
  {
    [(AVPictureInPicturePlayerLayerView *)self willChangeValueForKey:@"playerLayer"];
    [(_AVSimplePlayerLayerView *)self->_simplePlayerLayerView removeFromSuperview];
    simplePlayerLayerView = self->_simplePlayerLayerView;
    self->_simplePlayerLayerView = 0;

    [(AVPictureInPicturePlayerLayerView *)self didChangeValueForKey:@"playerLayer"];
  }
}

- (void)attachPlayerLayer
{
  if (!self->_simplePlayerLayerView)
  {
    [(AVPictureInPicturePlayerLayerView *)self willChangeValueForKey:@"playerLayer"];
    v3 = [_AVSimplePlayerLayerView alloc];
    [(AVPictureInPicturePlayerLayerView *)self bounds];
    v4 = [(_AVSimplePlayerLayerView *)v3 initWithFrame:?];
    simplePlayerLayerView = self->_simplePlayerLayerView;
    self->_simplePlayerLayerView = v4;

    [(_AVSimplePlayerLayerView *)self->_simplePlayerLayerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AVPictureInPicturePlayerLayerView *)self addSubview:self->_simplePlayerLayerView];
    v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_simplePlayerLayerView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:1.0];
    v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_simplePlayerLayerView attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_simplePlayerLayerView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:-1.0];
    v8 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_simplePlayerLayerView attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
    [(AVPictureInPicturePlayerLayerView *)self addConstraint:v7];
    [(AVPictureInPicturePlayerLayerView *)self addConstraint:v9];
    [(AVPictureInPicturePlayerLayerView *)self addConstraint:v8];
    [(AVPictureInPicturePlayerLayerView *)self addConstraint:v6];
    [(AVPictureInPicturePlayerLayerView *)self didChangeValueForKey:@"playerLayer"];
  }
}

@end