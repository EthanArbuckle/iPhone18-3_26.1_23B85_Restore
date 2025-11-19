@interface _TUIElementSegmentControlBuilder
- (id)finalizeAnimationGroups;
- (id)finalizeSegments;
- (void)addAnimationGroup:(id)a3 withName:(id)a4;
- (void)addSegmentWithTitle:(id)a3;
@end

@implementation _TUIElementSegmentControlBuilder

- (void)addAnimationGroup:(id)a3 withName:(id)a4
{
  v10 = a3;
  v6 = a4;
  animations = self->_animations;
  if (!animations)
  {
    v8 = objc_opt_new();
    v9 = self->_animations;
    self->_animations = v8;

    animations = self->_animations;
  }

  [(NSMutableDictionary *)animations setObject:v10 forKeyedSubscript:v6];
}

- (id)finalizeAnimationGroups
{
  if ([(NSMutableDictionary *)self->_animations count])
  {
    v3 = objc_alloc_init(TUIAnimationGroupCollection);
    [(TUIAnimationGroupCollection *)v3 setGroups:self->_animations];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addSegmentWithTitle:(id)a3
{
  v4 = a3;
  segments = self->_segments;
  v8 = v4;
  if (!segments)
  {
    v6 = objc_opt_new();
    v7 = self->_segments;
    self->_segments = v6;

    segments = self->_segments;
    v4 = v8;
  }

  [(NSMutableArray *)segments addObject:v4];
}

- (id)finalizeSegments
{
  v2 = [(NSMutableArray *)self->_segments copy];

  return v2;
}

@end