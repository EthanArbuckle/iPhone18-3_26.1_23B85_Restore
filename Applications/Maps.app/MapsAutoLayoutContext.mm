@interface MapsAutoLayoutContext
- (MapsAutoLayoutContext)init;
- (id)addConstraintWithItem:(id)item attribute:(int64_t)attribute relatedBy:(int64_t)by toItem:(id)toItem attribute:(int64_t)a7 multiplier:(double)multiplier constant:(double)constant;
- (id)addVisualFormat:(id)format withOptions:(unint64_t)options;
- (id)attribute:(int64_t)attribute isEqualToAttribute:(int64_t)toAttribute ofView:(id)view;
- (id)constrainView:(id)view attribute:(int64_t)attribute equalToView:(id)toView;
- (id)constrainView:(id)view attribute:(int64_t)attribute lessThanView:(id)thanView;
- (id)copyWithZone:(_NSZone *)zone;
- (id)heightOfView:(id)view isProportionalToHeightOfView:(id)ofView withRatio:(double)ratio;
- (id)widthOfView:(id)view isProportionalToWidthOfView:(id)ofView withRatio:(double)ratio;
- (void)addConstraints:(id)constraints;
- (void)addConstraintsToView:(id)view previousContext:(id)context;
- (void)addImmutableConstraintsToView:(id)view;
- (void)addMutableConstraints:(id)constraints;
- (void)beginUpdateConstraints;
- (void)designateConstraintsMutable:(id)mutable;
- (void)endUpdateConstraintsOnView:(id)view;
- (void)removeConstraint:(id)constraint;
- (void)removeConstraints:(id)constraints;
- (void)removeConstraintsFromView:(id)view;
- (void)removeImmutableConstraintsFromView:(id)view;
- (void)removeMutableConstraintsFromView:(id)view;
- (void)setTranslatesAutoResizingMaskIntoConstraints:(id)constraints value:(BOOL)value;
@end

@implementation MapsAutoLayoutContext

- (void)endUpdateConstraintsOnView:(id)view
{
  viewCopy = view;
  if ([(NSArray *)self->_oldMutableConstraints count])
  {
    [viewCopy removeConstraints:self->_oldMutableConstraints];
  }

  if ([(NSMutableArray *)self->_mutableConstraints count])
  {
    mutableConstraints = [(MapsAutoLayoutContext *)self mutableConstraints];
    [viewCopy addConstraints:mutableConstraints];
  }
}

- (void)beginUpdateConstraints
{
  objc_storeStrong(&self->_oldMutableConstraints, self->_mutableConstraints);
  v3 = objc_alloc_init(NSMutableArray);
  mutableConstraints = self->_mutableConstraints;
  self->_mutableConstraints = v3;
}

- (void)addImmutableConstraintsToView:(id)view
{
  viewCopy = view;
  if ([(NSMutableArray *)self->_constraints count])
  {
    constraints = [(MapsAutoLayoutContext *)self constraints];
    [viewCopy addConstraints:constraints];
  }
}

- (void)addConstraintsToView:(id)view previousContext:(id)context
{
  viewCopy = view;
  contextCopy = context;
  v7 = contextCopy;
  if (contextCopy)
  {
    [contextCopy removeConstraintsFromView:viewCopy];
  }

  if ([(NSMutableArray *)self->_constraints count])
  {
    constraints = [(MapsAutoLayoutContext *)self constraints];
    [viewCopy addConstraints:constraints];
  }

  if ([(NSMutableArray *)self->_mutableConstraints count])
  {
    mutableConstraints = [(MapsAutoLayoutContext *)self mutableConstraints];
    [viewCopy addConstraints:mutableConstraints];
  }
}

- (void)removeConstraintsFromView:(id)view
{
  viewCopy = view;
  [(MapsAutoLayoutContext *)self removeImmutableConstraintsFromView:viewCopy];
  [(MapsAutoLayoutContext *)self removeMutableConstraintsFromView:viewCopy];
}

- (void)removeMutableConstraintsFromView:(id)view
{
  viewCopy = view;
  if ([(NSMutableArray *)self->_mutableConstraints count])
  {
    mutableConstraints = [(MapsAutoLayoutContext *)self mutableConstraints];
    [viewCopy removeConstraints:mutableConstraints];
  }
}

- (void)removeImmutableConstraintsFromView:(id)view
{
  viewCopy = view;
  if ([(NSMutableArray *)self->_constraints count])
  {
    constraints = [(MapsAutoLayoutContext *)self constraints];
    [viewCopy removeConstraints:constraints];
  }
}

- (id)addConstraintWithItem:(id)item attribute:(int64_t)attribute relatedBy:(int64_t)by toItem:(id)toItem attribute:(int64_t)a7 multiplier:(double)multiplier constant:(double)constant
{
  v10 = [NSLayoutConstraint constraintWithItem:item attribute:attribute relatedBy:by toItem:toItem attribute:a7 multiplier:multiplier constant:constant];
  [(MapsAutoLayoutContext *)self addConstraint:v10];

  return v10;
}

- (id)attribute:(int64_t)attribute isEqualToAttribute:(int64_t)toAttribute ofView:(id)view
{
  v6 = [NSLayoutConstraint constraintWithItem:view attribute:attribute relatedBy:0 toItem:view attribute:toAttribute multiplier:1.0 constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (id)widthOfView:(id)view isProportionalToWidthOfView:(id)ofView withRatio:(double)ratio
{
  v6 = [NSLayoutConstraint constraintWithItem:view attribute:7 relatedBy:0 toItem:ofView attribute:7 multiplier:ratio constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (id)heightOfView:(id)view isProportionalToHeightOfView:(id)ofView withRatio:(double)ratio
{
  v6 = [NSLayoutConstraint constraintWithItem:view attribute:8 relatedBy:0 toItem:ofView attribute:8 multiplier:ratio constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (id)constrainView:(id)view attribute:(int64_t)attribute lessThanView:(id)thanView
{
  v6 = [NSLayoutConstraint constraintWithItem:view attribute:attribute relatedBy:-1 toItem:thanView attribute:attribute multiplier:1.0 constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (id)constrainView:(id)view attribute:(int64_t)attribute equalToView:(id)toView
{
  v6 = [NSLayoutConstraint constraintWithItem:view attribute:attribute relatedBy:0 toItem:toView attribute:attribute multiplier:1.0 constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (void)setTranslatesAutoResizingMaskIntoConstraints:(id)constraints value:(BOOL)value
{
  valueCopy = value;
  constraintsCopy = constraints;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [constraintsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(constraintsCopy);
        }

        [*(*(&v10 + 1) + 8 * v9) setTranslatesAutoresizingMaskIntoConstraints:valueCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [constraintsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)addVisualFormat:(id)format withOptions:(unint64_t)options
{
  v5 = [NSLayoutConstraint constraintsWithVisualFormat:format options:options metrics:self->_metrics views:self->_views];
  [(MapsAutoLayoutContext *)self addConstraints:v5];

  return v5;
}

- (void)addMutableConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [constraintsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(constraintsCopy);
        }

        [(MapsAutoLayoutContext *)self addMutableConstraint:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [constraintsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [constraintsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(constraintsCopy);
        }

        [(MapsAutoLayoutContext *)self addConstraint:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [constraintsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeConstraint:(id)constraint
{
  constraints = self->_constraints;
  constraintCopy = constraint;
  [(NSMutableArray *)constraints removeObject:constraintCopy];
  [(NSMutableArray *)self->_mutableConstraints removeObject:constraintCopy];
}

- (void)removeConstraints:(id)constraints
{
  constraints = self->_constraints;
  constraintsCopy = constraints;
  [(NSMutableArray *)constraints removeObjectsInArray:constraintsCopy];
  [(NSMutableArray *)self->_mutableConstraints removeObjectsInArray:constraintsCopy];
}

- (void)designateConstraintsMutable:(id)mutable
{
  constraints = self->_constraints;
  mutableCopy = mutable;
  [(NSMutableArray *)constraints removeObjectsInArray:mutableCopy];
  [(MapsAutoLayoutContext *)self addMutableConstraints:mutableCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MapsAutoLayoutContext);
  constraints = [(MapsAutoLayoutContext *)self constraints];
  v6 = [constraints mutableCopy];
  constraints = v4->_constraints;
  v4->_constraints = v6;

  mutableConstraints = [(MapsAutoLayoutContext *)self mutableConstraints];
  v9 = [mutableConstraints mutableCopy];
  mutableConstraints = v4->_mutableConstraints;
  v4->_mutableConstraints = v9;

  v11 = [(NSArray *)self->_oldMutableConstraints copy];
  oldMutableConstraints = v4->_oldMutableConstraints;
  v4->_oldMutableConstraints = v11;

  v13 = [(NSMutableDictionary *)self->_metrics mutableCopy];
  metrics = v4->_metrics;
  v4->_metrics = v13;

  v15 = [(NSMutableDictionary *)self->_views mutableCopy];
  views = v4->_views;
  v4->_views = v15;

  return v4;
}

- (MapsAutoLayoutContext)init
{
  v14.receiver = self;
  v14.super_class = MapsAutoLayoutContext;
  v2 = [(MapsAutoLayoutContext *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    constraints = v2->_constraints;
    v2->_constraints = v3;

    v5 = objc_alloc_init(NSMutableArray);
    mutableConstraints = v2->_mutableConstraints;
    v2->_mutableConstraints = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    metrics = v2->_metrics;
    v2->_metrics = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    views = v2->_views;
    v2->_views = v9;

    v11 = v2->_metrics;
    _defaultMetrics = [(MapsAutoLayoutContext *)v2 _defaultMetrics];
    [(NSMutableDictionary *)v11 addEntriesFromDictionary:_defaultMetrics];
  }

  return v2;
}

@end