@interface MapsAutoLayoutContext
- (MapsAutoLayoutContext)init;
- (id)addConstraintWithItem:(id)a3 attribute:(int64_t)a4 relatedBy:(int64_t)a5 toItem:(id)a6 attribute:(int64_t)a7 multiplier:(double)a8 constant:(double)a9;
- (id)addVisualFormat:(id)a3 withOptions:(unint64_t)a4;
- (id)attribute:(int64_t)a3 isEqualToAttribute:(int64_t)a4 ofView:(id)a5;
- (id)constrainView:(id)a3 attribute:(int64_t)a4 equalToView:(id)a5;
- (id)constrainView:(id)a3 attribute:(int64_t)a4 lessThanView:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)heightOfView:(id)a3 isProportionalToHeightOfView:(id)a4 withRatio:(double)a5;
- (id)widthOfView:(id)a3 isProportionalToWidthOfView:(id)a4 withRatio:(double)a5;
- (void)addConstraints:(id)a3;
- (void)addConstraintsToView:(id)a3 previousContext:(id)a4;
- (void)addImmutableConstraintsToView:(id)a3;
- (void)addMutableConstraints:(id)a3;
- (void)beginUpdateConstraints;
- (void)designateConstraintsMutable:(id)a3;
- (void)endUpdateConstraintsOnView:(id)a3;
- (void)removeConstraint:(id)a3;
- (void)removeConstraints:(id)a3;
- (void)removeConstraintsFromView:(id)a3;
- (void)removeImmutableConstraintsFromView:(id)a3;
- (void)removeMutableConstraintsFromView:(id)a3;
- (void)setTranslatesAutoResizingMaskIntoConstraints:(id)a3 value:(BOOL)a4;
@end

@implementation MapsAutoLayoutContext

- (void)endUpdateConstraintsOnView:(id)a3
{
  v5 = a3;
  if ([(NSArray *)self->_oldMutableConstraints count])
  {
    [v5 removeConstraints:self->_oldMutableConstraints];
  }

  if ([(NSMutableArray *)self->_mutableConstraints count])
  {
    v4 = [(MapsAutoLayoutContext *)self mutableConstraints];
    [v5 addConstraints:v4];
  }
}

- (void)beginUpdateConstraints
{
  objc_storeStrong(&self->_oldMutableConstraints, self->_mutableConstraints);
  v3 = objc_alloc_init(NSMutableArray);
  mutableConstraints = self->_mutableConstraints;
  self->_mutableConstraints = v3;
}

- (void)addImmutableConstraintsToView:(id)a3
{
  v5 = a3;
  if ([(NSMutableArray *)self->_constraints count])
  {
    v4 = [(MapsAutoLayoutContext *)self constraints];
    [v5 addConstraints:v4];
  }
}

- (void)addConstraintsToView:(id)a3 previousContext:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 removeConstraintsFromView:v10];
  }

  if ([(NSMutableArray *)self->_constraints count])
  {
    v8 = [(MapsAutoLayoutContext *)self constraints];
    [v10 addConstraints:v8];
  }

  if ([(NSMutableArray *)self->_mutableConstraints count])
  {
    v9 = [(MapsAutoLayoutContext *)self mutableConstraints];
    [v10 addConstraints:v9];
  }
}

- (void)removeConstraintsFromView:(id)a3
{
  v4 = a3;
  [(MapsAutoLayoutContext *)self removeImmutableConstraintsFromView:v4];
  [(MapsAutoLayoutContext *)self removeMutableConstraintsFromView:v4];
}

- (void)removeMutableConstraintsFromView:(id)a3
{
  v5 = a3;
  if ([(NSMutableArray *)self->_mutableConstraints count])
  {
    v4 = [(MapsAutoLayoutContext *)self mutableConstraints];
    [v5 removeConstraints:v4];
  }
}

- (void)removeImmutableConstraintsFromView:(id)a3
{
  v5 = a3;
  if ([(NSMutableArray *)self->_constraints count])
  {
    v4 = [(MapsAutoLayoutContext *)self constraints];
    [v5 removeConstraints:v4];
  }
}

- (id)addConstraintWithItem:(id)a3 attribute:(int64_t)a4 relatedBy:(int64_t)a5 toItem:(id)a6 attribute:(int64_t)a7 multiplier:(double)a8 constant:(double)a9
{
  v10 = [NSLayoutConstraint constraintWithItem:a3 attribute:a4 relatedBy:a5 toItem:a6 attribute:a7 multiplier:a8 constant:a9];
  [(MapsAutoLayoutContext *)self addConstraint:v10];

  return v10;
}

- (id)attribute:(int64_t)a3 isEqualToAttribute:(int64_t)a4 ofView:(id)a5
{
  v6 = [NSLayoutConstraint constraintWithItem:a5 attribute:a3 relatedBy:0 toItem:a5 attribute:a4 multiplier:1.0 constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (id)widthOfView:(id)a3 isProportionalToWidthOfView:(id)a4 withRatio:(double)a5
{
  v6 = [NSLayoutConstraint constraintWithItem:a3 attribute:7 relatedBy:0 toItem:a4 attribute:7 multiplier:a5 constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (id)heightOfView:(id)a3 isProportionalToHeightOfView:(id)a4 withRatio:(double)a5
{
  v6 = [NSLayoutConstraint constraintWithItem:a3 attribute:8 relatedBy:0 toItem:a4 attribute:8 multiplier:a5 constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (id)constrainView:(id)a3 attribute:(int64_t)a4 lessThanView:(id)a5
{
  v6 = [NSLayoutConstraint constraintWithItem:a3 attribute:a4 relatedBy:-1 toItem:a5 attribute:a4 multiplier:1.0 constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (id)constrainView:(id)a3 attribute:(int64_t)a4 equalToView:(id)a5
{
  v6 = [NSLayoutConstraint constraintWithItem:a3 attribute:a4 relatedBy:0 toItem:a5 attribute:a4 multiplier:1.0 constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (void)setTranslatesAutoResizingMaskIntoConstraints:(id)a3 value:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setTranslatesAutoresizingMaskIntoConstraints:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)addVisualFormat:(id)a3 withOptions:(unint64_t)a4
{
  v5 = [NSLayoutConstraint constraintsWithVisualFormat:a3 options:a4 metrics:self->_metrics views:self->_views];
  [(MapsAutoLayoutContext *)self addConstraints:v5];

  return v5;
}

- (void)addMutableConstraints:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MapsAutoLayoutContext *)self addMutableConstraint:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addConstraints:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MapsAutoLayoutContext *)self addConstraint:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeConstraint:(id)a3
{
  constraints = self->_constraints;
  v5 = a3;
  [(NSMutableArray *)constraints removeObject:v5];
  [(NSMutableArray *)self->_mutableConstraints removeObject:v5];
}

- (void)removeConstraints:(id)a3
{
  constraints = self->_constraints;
  v5 = a3;
  [(NSMutableArray *)constraints removeObjectsInArray:v5];
  [(NSMutableArray *)self->_mutableConstraints removeObjectsInArray:v5];
}

- (void)designateConstraintsMutable:(id)a3
{
  constraints = self->_constraints;
  v5 = a3;
  [(NSMutableArray *)constraints removeObjectsInArray:v5];
  [(MapsAutoLayoutContext *)self addMutableConstraints:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MapsAutoLayoutContext);
  v5 = [(MapsAutoLayoutContext *)self constraints];
  v6 = [v5 mutableCopy];
  constraints = v4->_constraints;
  v4->_constraints = v6;

  v8 = [(MapsAutoLayoutContext *)self mutableConstraints];
  v9 = [v8 mutableCopy];
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
    v12 = [(MapsAutoLayoutContext *)v2 _defaultMetrics];
    [(NSMutableDictionary *)v11 addEntriesFromDictionary:v12];
  }

  return v2;
}

@end