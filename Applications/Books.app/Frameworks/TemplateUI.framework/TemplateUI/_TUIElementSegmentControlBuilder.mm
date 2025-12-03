@interface _TUIElementSegmentControlBuilder
- (id)finalizeAnimationGroups;
- (id)finalizeSegments;
- (void)addAnimationGroup:(id)group withName:(id)name;
- (void)addSegmentWithTitle:(id)title;
@end

@implementation _TUIElementSegmentControlBuilder

- (void)addAnimationGroup:(id)group withName:(id)name
{
  groupCopy = group;
  nameCopy = name;
  animations = self->_animations;
  if (!animations)
  {
    v8 = objc_opt_new();
    v9 = self->_animations;
    self->_animations = v8;

    animations = self->_animations;
  }

  [(NSMutableDictionary *)animations setObject:groupCopy forKeyedSubscript:nameCopy];
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

- (void)addSegmentWithTitle:(id)title
{
  titleCopy = title;
  segments = self->_segments;
  v8 = titleCopy;
  if (!segments)
  {
    v6 = objc_opt_new();
    v7 = self->_segments;
    self->_segments = v6;

    segments = self->_segments;
    titleCopy = v8;
  }

  [(NSMutableArray *)segments addObject:titleCopy];
}

- (id)finalizeSegments
{
  v2 = [(NSMutableArray *)self->_segments copy];

  return v2;
}

@end